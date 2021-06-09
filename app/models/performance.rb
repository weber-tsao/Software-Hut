# == Schema Information
#
# Table name: performances
#
#  id               :bigint           not null, primary key
#  KPI1             :decimal(, )      default(0.0)
#  KPI2             :decimal(, )      default(0.0)
#  KPI3             :decimal(, )      default(0.0)
#  KPI4             :decimal(, )      default(0.0)
#  KPI5             :decimal(, )      default(0.0)
#  KPI6             :decimal(, )      default(0.0)
#  credit_threshold :string           default("")
#  current_credit   :string           default("")
#  current_risk     :string           default("")
#  initial_credit   :string           default("")
#  initial_risk     :string           default("")
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  vendor_id        :bigint           not null
#
# Indexes
#
#  index_performances_on_vendor_id  (vendor_id)
#
# Foreign Keys
#
#  fk_rails_...  (vendor_id => vendors.id)
#
class Performance < ApplicationRecord
    belongs_to :vendor
end
