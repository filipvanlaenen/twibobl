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

Gem::Specification.new do |gem|
  gem.name = 'twibobl'
  gem.version = '0.2a1'
  gem.authors = ['Filip van Laenen']
  gem.email = ['f.a.vanlaenen@ieee.org']

  gem.description = 'Twitter Bot Building Blocks'
  gem.summary = 'Library to with building blocks to build Twitter bots'
  gem.homepage = 'https://github.com/filipvanlaenen/twibobl'
  gem.license = 'GPL'

  gem.require_paths = ['lib']
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- spec`.split("\n")
  gem.extra_rdoc_files = %w[LICENSE README.md]

end
