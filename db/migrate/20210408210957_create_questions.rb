class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question_text

      t.timestamps
    end
    add_reference :questions, :question_set, foreign_key: true, null: false
  end
end
