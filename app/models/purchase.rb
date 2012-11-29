class Purchase < ActiveRecord::Base
  attr_accessible :email, :name, :product, :token
end
