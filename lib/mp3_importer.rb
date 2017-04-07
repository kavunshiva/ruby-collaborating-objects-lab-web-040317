require 'artist'
require 'song'

class MP3Importer
  attr_accessor :path

  @@files = []

  def initialize(filepath)
    @path = filepath
  end

  def files
    stuff = Dir.entries(@path)[2..-1]
  end

  def import
    files.each do |file|
      song = Song.new_by_filename(file)
    end
  end
end
