class Client < ApplicationRecord
  validates :name, :mobile_no, :company_name, presence: true
  validates :name, format: {with: /[a-zA-Z]/}
  validates :mobile_no, :company_name, uniqueness: true
  validates :mobile_no, length: { maximum: 10}, :numericality => true
end
