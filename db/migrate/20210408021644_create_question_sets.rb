class CreateQuestionSets < ActiveRecord::Migration[6.0]
  def change
    create_table :question_sets do |t|
      t.string :name

      t.timestamps
    end
  end
end
