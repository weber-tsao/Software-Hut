# == Schema Information
#
# Table name: additional_actions
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  answer_option_id :bigint           not null
#  task_id          :bigint           not null
#
# Indexes
#
#  index_additional_actions_on_answer_option_id  (answer_option_id)
#  index_additional_actions_on_task_id           (task_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_option_id => answer_options.id)
#  fk_rails_...  (task_id => tasks.id)
#
class AdditionalAction < ApplicationRecord
    belongs_to :answer_option
    has_one :task
end
