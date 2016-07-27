class Member < ApplicationRecord
  has_one :admin
  has_one :guide
  has_secure_password
end
