source :rubygems

chiliproject_file = File.dirname(__FILE__) + "/lib/chili_project.rb"
chiliproject = File.file?(chiliproject_file)

deps = Hash.new
@dependencies.map{|dep| deps[dep.name] = dep }
rails3 = Gem::Dependency.new('rails', '~>3.0')
RAILS_VERSION_IS_3 = rails3 =~ deps['rails']

# moved out of the dev group so backlogs can be tested by the user after install. Too many issues of weird setups with apache, nginx, etc.
# thin doesn't work for jruby
gem "thin", :platforms => [:ruby]
