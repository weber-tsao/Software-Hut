# == Schema Information
#
# Table name: question_sets
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class QuestionSet < ApplicationRecord
    has_many :questions
end
