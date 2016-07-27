class Client < ApplicationRecord
  belongs_to :language
  has_many :missions
  has_one :location, as: :locatable
  
  def served?
    false
    true if missions.active.any?
  end
end
