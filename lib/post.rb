#!/usr/bin/env ruby

class Post < Struct.new(:tdate, :url, :title, :author, :author_nick_name, :src, :contain)
  def to_map
    map = Hash.new
    self.members.each { |m| map[m] = self[m] }
    map
  end

  def to_json(*a)
    to_map.to_json(*a)
  end
end
