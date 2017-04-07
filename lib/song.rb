require 'artist'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = filename.split("-")[1][1...-1]
    song_artist = filename.split("-")[0][0...-1]
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(song_artist)
    song.artist.add_song(song)
    song
  end
end
