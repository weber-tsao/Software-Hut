# == Schema Information
#
# Table name: vendor_responses
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  answer_option_id :bigint           not null
#  question_id      :bigint           not null
#  vendor_id        :bigint           not null
#
# Indexes
#
#  index_vendor_responses_on_answer_option_id  (answer_option_id)
#  index_vendor_responses_on_question_id       (question_id)
#  index_vendor_responses_on_vendor_id         (vendor_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_option_id => answer_options.id)
#  fk_rails_...  (question_id => questions.id)
#  fk_rails_...  (vendor_id => vendors.id)
#
class VendorResponse < ApplicationRecord
    belongs_to :question
    belongs_to :answer_option
    belongs_to :vendor
end
