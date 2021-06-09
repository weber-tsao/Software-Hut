# == Schema Information
#
# Table name: task_allocations
#
#  id         :bigint           not null, primary key
#  completed  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  task_id    :bigint           not null
#  vendor_id  :bigint           not null
#
# Indexes
#
#  index_task_allocations_on_task_id    (task_id)
#  index_task_allocations_on_vendor_id  (vendor_id)
#
# Foreign Keys
#
#  fk_rails_...  (task_id => tasks.id)
#  fk_rails_...  (vendor_id => vendors.id)
#
class TaskAllocation < ApplicationRecord
    belongs_to :task
    belongs_to :vendor
    has_one :upload_file
end
