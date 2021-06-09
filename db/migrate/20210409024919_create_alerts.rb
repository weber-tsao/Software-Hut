class CreateAlerts < ActiveRecord::Migration[6.0]
  def change
    create_table :alerts do |t|
      t.integer :UserID
      t.date :Date
      t.string :Text

      t.timestamps
    end
  end
end
