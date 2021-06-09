class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    if user_signed_in? && current_user.account_type == "vendor" && current_user.active == true
      # variable field
      @tasks = Task.all
      @vendors = Vendor.all
      @vendor_id = 0
      @InitialRatio = 0
      @initial_taskAmount = 0
      @initial_taskDone = 0

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

      @task_allocations.each do |task_allocations|
        @current_task = Task.find(task_allocations.task_id)
        # calculate the amount of tasks that is initial task and is completed
        if @current_task.initial_task == true && task_allocations.completed == true
          @initial_taskDone += 1
        end 
        # calculate the amount of inital task current vendor have
        if @current_task.initial_task == true && @vendor_id == task_allocations.vendor_id
          @initial_taskAmount += 1
        end 
      end
      # calculate the ration between initial task that are done and all initial task
      @InitialRatio = @initial_taskDone.fdiv(@initial_taskAmount)
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  # GET /tasks/1
  def show
  end

  # GET /tasks/new
  def new
    if user_signed_in? && current_user.account_type == "internal" && current_user.active == true
      @task = Task.new
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    if user_signed_in? && current_user.account_type == "internal" && current_user.active == true
      @task = Task.new(task_params)

      if @task.save
        redirect_to new_task_path, notice: 'Task was successfully created.'
      else
        render :new
      end
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if user_signed_in? && current_user.account_type == "internal" && current_user.active == true
      if @task.update(task_params)
        redirect_to tasks_path, notice: 'Task was successfully updated.'
      else
        render :index
      end
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  # DELETE /tasks/1
  def destroy
    if user_signed_in? && current_user.account_type == "internal" && current_user.active == true
      @task.destroy
      redirect_to tasks_url, notice: 'Task was successfully destroyed.'
    else 
      redirect_to :root, notice: 'Access denied.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:task_type, :task_name, :link, :file_title, :deadline, :needs_approval, 
                                   :initial_task, vendor_ids: [])
    end
end
