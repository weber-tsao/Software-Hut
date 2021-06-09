# == Schema Information
#
# Table name: upload_files
#
#  id                 :bigint           not null, primary key
#  attachment         :string           not null
#  date_uploaded      :date
#  title              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  task_allocation_id :bigint           not null
#  vendor_id          :bigint           not null
#
# Indexes
#
#  index_upload_files_on_task_allocation_id  (task_allocation_id)
#  index_upload_files_on_vendor_id           (vendor_id)
#
# Foreign Keys
#
#  fk_rails_...  (task_allocation_id => task_allocations.id)
#  fk_rails_...  (vendor_id => vendors.id)
#
class UploadFile < ApplicationRecord
    mount_uploader :attachment, AttachmentUploader
    belongs_to :vendor
    belongs_to :task_allocation
end
