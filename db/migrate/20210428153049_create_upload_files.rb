class CreateUploadFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :upload_files do |t|
      t.string :title
      t.date :date_uploaded
      t.string :attachment, null: false

      t.timestamps
    end
    add_reference :upload_files, :vendor, foreign_key: true, null: false
    add_reference :upload_files, :task_allocation, foreign_key: true, null: false
  end
end
