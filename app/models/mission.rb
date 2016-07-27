class Mission < ApplicationRecord
  belongs_to :mission_type
  belongs_to :guide
  belongs_to :client
  
  default_scope {order("begin DESC")}
  scope :active, ->{where("begin < ?", DateTime.now).where("end > ?", DateTime.now)}
end
