# == Schema Information
#
# Table name: answer_options
#
#  id          :bigint           not null, primary key
#  answer_text :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint           not null
#
# Indexes
#
#  index_answer_options_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#
class AnswerOption < ApplicationRecord
    belongs_to :question
    has_many :additional_actions
    has_many :vendor_responses
end
