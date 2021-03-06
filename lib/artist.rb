require 'song'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      return artist if artist.name == name
    end
    self.new(name)
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
