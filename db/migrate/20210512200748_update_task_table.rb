class UpdateTaskTable < ActiveRecord::Migration[6.0]
  def change
    change_table :tasks do |t|
      t.rename :TaskType, :task_type
      t.rename :TaskName, :task_name
      t.rename :Link, :link
      t.rename :FileTitle, :file_title
      t.rename :Deadline, :deadline
      t.rename :NeedsApproval, :needs_approval
      t.rename :InitialTask, :initial_task
    end

    change_table :task_allocations do |t|
      t.rename :Completed, :completed
    end

    change_table :tasks_vendors do |t|
      t.rename :Completed, :completed
    end

    drop_table :test_tables
  end
end
