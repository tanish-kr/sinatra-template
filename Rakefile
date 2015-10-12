# config: utf-8
require 'bundler/setup'
require 'rspec/core/rake_task'

def load_tasks
  Dir[File.join(File.expand_path('.'), 'lib', 'tasks', '*.rb'),
    File.join(File.expand_path('.'), 'lib', 'tasks', '*.rake')].each do |file|
      load file
  end
end

load_tasks

RSpec::Core::RakeTask.new('spec')
