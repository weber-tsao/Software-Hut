class UploadFilesController < ApplicationController
  before_action :set_upload_file, only: [:show, :edit, :update, :destroy]

  # GET /upload_files
  def index
    if user_signed_in? && current_user.account_type == "vendor" && current_user.active == true
      # variable field
      @upload_file = UploadFile.new
      @tasks = Task.all
      @vendors = Vendor.all
      @upload_files = UploadFile.all
      @vendor_id = 0

      # find current vendor id
      @vendors.each do |vendor|
        if vendor.user_id == current_user.id
          @current_vendor = vendor.user_id
          @vendor = Vendor.find(vendor.id)
          @vendor_id = vendor.id
        end
      end

      # find current vendor's task_allocations
      @task_allocations = TaskAllocation.where(vendor_id: @vendor_id)
      
      # find current vendor's name
      @vendor_name = Vendor.where(id: @vendor_id).name
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  # GET /upload_files/1
  def show
  end

  # GET /upload_files/new
  def new
    @upload_file = UploadFile.new
  end

  # GET /upload_files/1/edit
  def edit
  end

  # POST /upload_files
  def create
    if user_signed_in? && current_user.account_type == "vendor" && current_user.active == true
      # variable field
      @upload_file = UploadFile.new(upload_file_params)
      @tasks = Task.all
      @vendors = Vendor.all
      @upload_files = UploadFile.all
      @vendor_id = 0

      # find current vendor id
      @vendors.each do |vendor|
        if vendor.user_id == current_user.id
          @current_vendor = vendor.user_id
          @vendor = Vendor.find(vendor.id)
          @vendor_id = vendor.id
        end
      end

      # find current vendor's task_allocations
      @task_allocations = TaskAllocation.where(vendor_id: @vendor_id)
      
      # find current vendor's name
      @vendor_name = Vendor.where(id: @vendor_id).name

      if !@upload_file.attachment.present? # if vendor does not choose a file to upload
        redirect_to upload_files_path, notice: 'Please choose a file to proceed.'
      elsif @upload_file.save
        @current_task_allocation = TaskAllocation.where(id: @upload_file.task_allocation_id)
        @current_task_allocation.update(completed: true) # update arrtibute completed in task_allocation into true
        redirect_to upload_files_path, notice: 'Upload file was successfully created.'
      else
        render :new
      end
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  def view_files
    if user_signed_in? && current_user.account_type == "vendor" && current_user.active == true
      # variable field
      @tasks = Task.all
      @vendors = Vendor.all
      @upload_files = UploadFile.all
      @vendor_id = 0
      
      # find current vendor id
      @vendors.each do |vendor|
        if vendor.user_id == current_user.id
          @current_vendor = vendor.user_id
          @vendor = Vendor.find(vendor.id)
          @vendor_id = vendor.id
        end
      end

      # find current vendor's task_allocations
      @task_allocations = TaskAllocation.where(vendor_id: @vendor_id)
      
      # find current vendor's name
      @vendor_name = Vendor.where(id: @vendor_id).name
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  # PATCH/PUT /upload_files/1
  def update
    if user_signed_in? && current_user.account_type == "vendor" && current_user.active == true
      url = request.referrer # get previous url
      
      # prevent jumping to other pages when updating 
      if @upload_file.update(upload_file_params) && url.include?('/upload_files')
        redirect_to upload_files_path, notice: 'Upload file was successfully updated.'
      elsif @upload_file.update(upload_file_params) && url.include?('/view_files')
        redirect_to view_files_path, notice: 'Upload file was successfully updated.'
      else
        render :edit
      end
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  # DELETE /upload_files/1
  def destroy
    if user_signed_in? && current_user.account_type == "vendor" && current_user.active == true
      @upload_file.destroy
      redirect_to upload_files_url, notice: 'Upload file was successfully destroyed.'
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upload_file
      @upload_file = UploadFile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def upload_file_params
      params.require(:upload_file).permit(:title, :date_uploaded, :attachment, :vendor_id, :task_allocation_id)
    end
end
