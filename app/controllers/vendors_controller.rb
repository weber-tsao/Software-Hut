class VendorsController < ApplicationController
  before_action :set_vendor, only: [:show, :edit, :update, :destroy]

  # GET /vendors
  def index
    @vendors = Vendor.all
    @user = current_user
  end

  # GET /vendors/1
  def show
  end

  # GET /vendors/new
  def new
    @vendor = Vendor.new
  end

  # GET /vendors/1/edit
  def edit
  end

  # POST /vendors
  def create
    @vendor = Vendor.new(vendor_params)

    if @vendor.save
      redirect_to @vendor, notice: 'Vendor was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /vendors/1
  def update
    if @vendor.update(vendor_params)
      if current_user.account_type=="vendor"
        redirect_to vendor_setting_path, notice: 'Vendor was successfully updated.'
      else
        redirect_to root_path, notice: "Vendor successfully approved"
      end
    else
      if current_user.account_type=="vendor"
        render :edit
      else
        redirect_to root_path
      end
    end
  end

  # DELETE /vendors/1
  def destroy
    @vendor.destroy
    redirect_to vendors_url, notice: 'Vendor was successfully destroyed.'
  end

  # POST /vendors/search
  def search  
    # {"search" => {"name" => "some entered name"} }  
    @vendors = Vendor.all
    @vendors = @vendors.where("name LIKE ?", "%#{params[:search][:query]}%") if params[:search][:query].present?
    render :index
  end

  def view_vendor_files
    if user_signed_in? && current_user.account_type == "internal" && current_user.active == true
      # variable field
      @upload_file = UploadFile.new
      @tasks = Task.all
      @vendors = Vendor.all
      @upload_files = UploadFile.all

      # find current vendor details
      @vendor = Vendor.find(params[:vendor])

      # find current vendor's task_allocations
      @task_allocations = TaskAllocation.where(vendor_id: @vendor.id)

      # find current vendor's name
      @vendor_name = @vendor.name
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  def contacts
    @assignments = current_user.vendor.vendor_assignments
  end
  
  def triage_questionnaire_responses
    @vendors = Vendor.all
    @vendor = Vendor.find(params[:vendor])
    @vendor_name = @vendor.name
    @question2 = Question.where(question_set_id: 2)
    @vendor_responses = VendorResponse.all.where(question_id: @question2)
  end

  def data_questionnaire_responses
    @vendors = Vendor.all
    @vendor = Vendor.find(params[:vendor])
    @vendor_name = @vendor.name
    @question1 = Question.where(question_set_id: 1)
    @vendor_responses = VendorResponse.all.where(question_id: @question1)
  end
  
  def vendor_settings
    if user_signed_in? && current_user.account_type == "vendor" && current_user.active == true
      @vendors = Vendor.all

      # find current vendor id 
      @vendors.each do |vendor|
        if vendor.user_id == current_user.id
          @current_vendor = vendor.user_id
          @vendor = Vendor.find(vendor.id)
        end
      end
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vendor_params
      params.require(:vendor).permit(:query, :name, :company_number, :legal_address, :jurisdiction, :service_type, :contact_number, :director, :approved, task_ids: [])
    end
end
