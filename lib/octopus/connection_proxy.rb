module Octopus
  module ConnectionProxy
    def self.included(klass)
      config = YAML::load_file("config/shards_recruit.yml")
      klass.instance_variable_set(:@connection_proxy, Octopus::Proxy.new(klass, config[Octopus.env]))
    end
  end
end
