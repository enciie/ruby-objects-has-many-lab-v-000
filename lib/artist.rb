class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song_title)
    song = Song.new(song_title)
    @songs << song
    song.artist = self
  end

  def self.song_count
    @@song_count.length
  end

end
