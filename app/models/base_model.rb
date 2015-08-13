class BaseModel < ActiveRecord::Base
  #include Octopus::ConnectionProxy
  self.abstract_class = true
  def self.initialize_internal
    config = YAML::load_file("config/shards_recruit.yml")
    self.instance_variable_set(:@connection_proxy, Octopus::Proxy.new(self, config[Octopus.env]))
    self.instance_variable_get(:@connection_proxy)
  end
end