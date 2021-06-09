class CreateTaskAllocations < ActiveRecord::Migration[6.0]
  def change
    create_table :task_allocations do |t|
      t.boolean :Completed,       default: false

      t.timestamps
    end
    add_reference :task_allocations, :task, foreign_key: true, null: false
    add_reference :task_allocations, :vendor, foreign_key: true, null: false
  end
end
