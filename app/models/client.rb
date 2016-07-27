class Client < ApplicationRecord
  belongs_to :language
  has_many :missions
  has_one :location, as: :locatable
  delegate :address, to: :location
  delegate :zipcode, to: :location
  delegate :town,    to: :location
  accepts_nested_attributes_for :location
  
  def served?
    false
    true if missions.active.any?
  end
end
