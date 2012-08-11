gem 'capistrano'

#inject_into_file "config/initializers/generators.rb", :after => "Rails.application.config.generators do |g|\n" do
  #"    g.test_framework = :rspec\n"
#end

after_bundler do
 run 'bundle exec capify .'
  #create_file "lib/tasks/resque.rake", <<-RAKE
#require 'resque/tasks'
#RAKE
end

__END__

name: Capistrano
description: "Deployment with capistrano"
author: nadnerb

category: deployment

