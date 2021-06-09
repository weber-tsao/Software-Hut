class CreateAnswerOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_options do |t|
      t.string :answer_text

      t.timestamps
    end
    add_reference :answer_options, :question, foreign_key: true, null: false
  end
end
