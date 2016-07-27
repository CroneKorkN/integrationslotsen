class Client < ApplicationRecord
  belongs_to :language
  has_many :missions
  has_one :location, as: :locatable
end
