class Service < ActiveRecord::Base
  attr_accessible :name, :position
  belongs_to :admin_user
end
