# == Schema Information
#
# Table name: alerts
#
#  id         :bigint           not null, primary key
#  Date       :date
#  Text       :string
#  UserID     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Alert < ApplicationRecord
end
