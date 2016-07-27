class Seminar < ApplicationRecord
  belongs_to :seminar_type
  has_many :registrations
  
  delegate :name, to: :seminar_type
end