class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :TaskType
      t.string :TaskName
      t.string :Link,     default: ""
      t.string :FileTitle
      t.date :Deadline
      t.boolean :NeedsApproval
      t.boolean :InitialTask

      t.timestamps
    end
  end
end