class Client < ApplicationRecord
  belongs_to :language
  has_many :missions
end
