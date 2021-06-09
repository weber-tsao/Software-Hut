# == Schema Information
#
# Table name: vendors
#
#  id             :bigint           not null, primary key
#  approved       :boolean          default(FALSE)
#  company_number :string
#  contact_number :string
#  director       :string
#  jurisdiction   :string
#  legal_address  :string
#  name           :string
#  service_type   :string
#  user_id        :bigint           not null
#
# Indexes
#
#  index_vendors_on_company_number  (company_number) UNIQUE
#  index_vendors_on_name            (name) UNIQUE
#  index_vendors_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Vendor < ApplicationRecord
    belongs_to :user
    has_many :task_allocations
    has_many :tasks, through: :task_allocations
    has_one :performance
    has_many :vendor_assignments
    #has_many :vendor_responses
end
