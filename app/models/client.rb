class Client < ApplicationRecord
  belongs_to :language
  has_many :missions
  belongs_to :location
end
