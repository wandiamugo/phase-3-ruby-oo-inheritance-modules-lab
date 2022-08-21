require "pry"
require_relative "./concerns/memorable"
require_relative "./concerns/findable"
require_relative "./concerns/paramable"

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  include Paramable

  extend Findable

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  def self.find_by_name(name)
    @@songs.detect { |a| a.name == name }
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end