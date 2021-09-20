class Taluka < ApplicationRecord
  belongs_to :state
  belongs_to :district
  validates :name, presence: true
  validates :name, format: {with: /[a-zA-Z]/}
end
