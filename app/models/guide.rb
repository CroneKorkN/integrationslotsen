class Guide < ApplicationRecord
  belongs_to :member
  has_many :missions
  has_many :registrations
end
