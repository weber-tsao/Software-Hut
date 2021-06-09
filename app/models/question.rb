# == Schema Information
#
# Table name: questions
#
#  id              :bigint           not null, primary key
#  question_text   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  question_set_id :bigint           not null
#
# Indexes
#
#  index_questions_on_question_set_id  (question_set_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_set_id => question_sets.id)
#
class Question < ApplicationRecord
    belongs_to :question_set
    has_many :answer_options
    has_many :vendor_responses
end
