class InternalUsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  # GET /users/index
  def index
    if user_signed_in? && current_user.account_type == "internal" && current_user.active == true
      @user = current_user
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    if user_signed_in? && current_user.account_type == "internal" && current_user.active == true
      @user = current_user
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  
  # PATCH/PUT /users/1
  def update
    if user_signed_in? && current_user.account_type == "internal" && current_user.active == true
      if @user.update(user_params)
        redirect_to internal_users_path, notice: 'User was successfully updated.'
      else
        render :edit
      end
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  def view_vendors
    @vendors = Vendor.all
  end

  def view_accounts
    @users = User.all
  end

  def approve_vendors
    @vendors = Vendor.all.where(approved: false)
  end

  def vendor_summary
    @vendors = Vendor.all
  end
  
  # POST /products/search
  def search
    @users = User.all
    @users = @users.where("email LIKE ?", "%#{params[:search][:email]}%") if params[:search][:email].present?

    render :view_accounts
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :password, :account_type, :active, user_ids: [])
    end
end
