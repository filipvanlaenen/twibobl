# -*- encoding: utf-8 -*-
#
# TwiBoBl (Twitter Bot Building Blocks)
# Copyright (C) 2014 Filip van Laenen <f.a.vanlaenen@ieee.org>
#
# This file is part of TwiBoBl (Twitter Bot Building Blocks).
#
# TwiBoBl (Twitter Bot Building Blocks) is free software: you can redistribute
# it and/or modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation, either version 3 of the License,
# or (at your option) any later version.
#
# TwiBoBl (Twitter Bot Building Blocks) is distributed in the hope that it will
# be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General
# Public License for more details.
#
# You can find a copy of the GNU General Public License in /LICENSE
#

require 'rspec/core/rake_task'

desc 'Default: run specs.'
task default: :spec

desc 'Run specs'
RSpec::Core::RakeTask.new do |t|
  t.pattern = './spec/**/*_spec.rb'
end

desc 'Run Mutant'
task :mutant do
  require 'mutant'
  status = Mutant::CLI.run(['::Twibobl*', '--rspec', '--static-fail'].flatten)
  if status.nonzero?
    abort 'Mutant task is not successful'
  end
end
