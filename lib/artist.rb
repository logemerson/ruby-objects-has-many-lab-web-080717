class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize (name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @@song_count += 1
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song)
    new_song = Song.new(song)
    self.add_song(new_song)
  end

  def self.song_count
    @@song_count
  end

end
