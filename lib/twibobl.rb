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

#
# Main class for Twibobl
#
class Twibobl
  def initialize(twitter)
    @twitter = twitter
  end

  def follow_new_followers
    followers = @twitter.followers.to_a
    followed = @twitter.friends.to_a
    new_followers = followers - followed
    new_followers.each { | nf | @twitter.follow(nf) }
  end

  def read_timeline(mark)
    options = { count: 200, trim_user: true, exclude_replies: true,
                include_rts: false, contributor_details: true }
    all_tweets = @twitter.home_timeline(options)
    # The following is a compensation for since_id not working as an option
    # for home_timeline (it throws an could not authenticate error)
    all_tweets.select { | tweet | tweet.id >= mark }
  end
end
