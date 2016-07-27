class Admin < ApplicationRecord
  belongs_to :member
  
  accepts_nested_attributes_for :member
    
  delegate :name, to: :member
  delegate :username, to: :member
  delegate :email, to: :member
end
