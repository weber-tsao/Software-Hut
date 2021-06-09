class VendorAssignmentsController < ApplicationController
  before_action :set_vendor_assignment, only: [:show, :edit, :update, :destroy]

  # GET /vendor_assignments
  def index
    @vendor_assignments = VendorAssignment.all
    @vendor_assignments = @vendor_assignments.where(user_id: current_user.id)
  end

  # GET /vendor_assignments/1
  def show
    @account = User.find(params[:account])
  end

  def show_assignments
    @account = User.find(params[:account])
  end

  # GET /vendor_assignments/new
  def new
    @vendor_assignment = VendorAssignment.new
    @vendor = Vendor.find(params[:vendor])
  end

  # GET /vendor_assignments/1/edit
  def edit
  end

  
  # POST /vendor_assignments
  def create
    @vendor_assignment = VendorAssignment.where(user_id: vendor_assignment_params[:user_id], vendor_id: vendor_assignment_params[:vendor_id]).first_or_create(vendor_assignment_params)
  
    if @vendor_assignment.save
      redirect_to vendors_url, notice: 'Vendor successfully assigned.'
    else
      redirect_to vendors_url, notice: 'Vendor assignment failed'
    end
  end

  # PATCH/PUT /vendor_assignments/1
  #def update
  #  if @vendor_assignment.update(vendor_assignment_params)
  #    redirect_to vendor_assignment_setting_path, notice: 'Vendor_assignment was successfully updated.'
  #  else
  #    render :edit
  #  end
  #end

  # DELETE /vendor_assignments/1
  def destroy
    @vendor_assignment.destroy
    redirect_to vendor_assignments_url, notice: 'Vendor_assignment was successfully destroyed.'
  end

  # POST /vendor_assignments/search
  #def search  
  #  # {"search" => {"name" => "some entered name"} }  
  #  @vendor_assignments = Vendor_assignment.all
  #  @vendor_assignments = @vendor_assignments.where(name: params[:search][:name]) if params[:search][:name].present?
  #  render :index
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_assignment
      @vendor_assignment = VendorAssignment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vendor_assignment_params
      params.require(:vendor_assignment).permit(:user_id, :vendor_id)
    end
end
