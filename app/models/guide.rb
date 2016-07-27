class Guide < ApplicationRecord
  belongs_to :member
  has_many :missions
  has_many :registrations
  belongs_to :location
  
  accepts_nested_attributes_for :location
  accepts_nested_attributes_for :member
  
  delegate :address, to: :location
  delegate :zipcode, to: :location
  delegate :town, to: :location
  delegate :name, to: :member
  delegate :username, to: :member
  delegate :email, to: :member

end
