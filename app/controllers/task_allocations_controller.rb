class TaskAllocationsController < ApplicationController
    before_action :set_task_allocation, only: [:show, :edit, :update, :destroy]

    # GET /task_allocations
    def index
      @task_allocations = TaskAllocation.all
    end

    # GET /task_allocations/1
    def show
    end

    # GET /task_allocations/new
    def new
      @task_allocation = TaskAllocation.new
    end

    # GET /task_allocations/1/edit
    def edit
    end

    # POST /task_allocations
    def create
      @task_allocation = TaskAllocation.new(task_allocation_params)

      if @task_allocation.save
        redirect_to tasks_path, notice: 'Task allocation was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /task_allocations/1
    def update
      if @task_allocation.update(task_allocation_params)
        redirect_to tasks_path, notice: 'Task allocation was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /task_allocations/1
    def destroy
      @task_allocation.destroy
      redirect_to task_allocations_url, notice: 'Task allocation was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_task_allocation
        @task_allocation = TaskAllocation.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def task_allocation_params
        params.require(:task_allocation).permit(:completed)
      end
  end