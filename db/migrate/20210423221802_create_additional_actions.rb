class CreateAdditionalActions < ActiveRecord::Migration[6.0]
  def change
    create_table :additional_actions do |t|

      t.timestamps
    end
    add_reference :additional_actions, :answer_option, foreign_key: true, null: false
    add_reference :additional_actions, :task, foreign_key: true, null: false
  end
end
