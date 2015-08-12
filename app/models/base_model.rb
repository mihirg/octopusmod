class BaseModel < ActiveRecord::Base
  include Octopus::ConnectionProxy
  self.abstract_class = true
end