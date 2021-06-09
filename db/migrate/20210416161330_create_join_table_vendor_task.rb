class CreateJoinTableVendorTask < ActiveRecord::Migration[6.0]
  def change
    create_join_table :vendors, :tasks do |t|
      t.index [:vendor_id, :task_id]
      t.index [:task_id, :vendor_id]
      t.boolean :Completed,   default: false
    end
  end
end
