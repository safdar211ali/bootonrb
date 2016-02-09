class User < ActiveRecord::Base
  validates_presence_of :name,:usertype,:status

end
