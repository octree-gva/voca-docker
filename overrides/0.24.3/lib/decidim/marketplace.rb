require "yaml"
module Decidim
  module Marketplace
    def self.each_gem(&block)
      gems = YAML.load_file(File.join(ENV["RAILS_ROOT"], "config/marketplace.yml"))["voca"]["gems"]
      return if gems.nil?
      gems.each do |gem_name, gem_options|
        gem_parameters = [gem_name]
        gem_parameters << gem_options.delete("version") unless gem_options["version"].nil?
        gem_parameters << gem_options.delete("version_max") unless gem_options["version_max"].nil?
        block.call(gem_parameters, gem_options)
      end
    end
  end
end
