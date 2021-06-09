# == Schema Information
#
# Table name: tasks
#
#  id             :bigint           not null, primary key
#  deadline       :date
#  file_title     :string
#  initial_task   :boolean
#  link           :string           default("")
#  needs_approval :boolean
#  task_name      :string
#  task_type      :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Task < ApplicationRecord
    has_many :task_allocations
    has_many :vendors, through: :task_allocations
    #belongs_to :additional_action
end
