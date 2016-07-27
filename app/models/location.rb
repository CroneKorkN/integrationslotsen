class Location < ApplicationRecord
  belongs_to :locatable, polymorphic: true, optional: true
  
  after_validation :geocode, if: :geocodable_location_changed?
  
  geocoded_by :geocodable_location
  
  after_create :update_geocodable_location
  after_update :update_geocodable_location
  
  def update_geocodable_location
    if geocodable_location != "#{address}, #{zipcode} #{town}, Germany"
      update geocodable_location: "#{address}, #{zipcode} #{town}, Germany"
    end    
  end
end
