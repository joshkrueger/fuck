require "bundler/gem_tasks"
require "rspec"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new do |t|
  t.rspec_opts = %w(--format documentation --color)
  t.pattern = 'spec/**/*_spec.rb'
end

task :default => ["spec"]
