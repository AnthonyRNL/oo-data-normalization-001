require "tempfile"
require "pry"
class Song
  # code goes here
  attr_accessor :title, :artist
  def initialize
    @title = ""
    @artist = ""
  end

  def artist=(new_artist)
    @artist = new_artist
  end

  def slugify
    file_name = @title.downcase.gsub(" ", "_")
    content = "#{@artist.name} - #{@title}"
    file = Tempfile.new([file_name, ".txt"], "tmp")
    file.write(content)
    file.close
  end
end
