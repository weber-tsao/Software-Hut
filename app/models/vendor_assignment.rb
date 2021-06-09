# == Schema Information
#
# Table name: vendor_assignments
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#  vendor_id  :bigint           not null
#
# Indexes
#
#  index_vendor_assignments_on_user_id    (user_id)
#  index_vendor_assignments_on_vendor_id  (vendor_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#  fk_rails_...  (vendor_id => vendors.id)
#
class VendorAssignment < ApplicationRecord
  belongs_to :user
  belongs_to :vendor
end
