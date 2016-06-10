class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, hash|
      hash[genre] ||= 0
      hash[genre] += 1
    end
    # @@genres = ["pop", "rap", "rap"]
    # => {"pop" => 1, "rap" => 2}
    #iterate over array, create key with element, add to its artist_count
  end

  def self.artist_count
    #iterate over all songs, grab the artist, create hash key, if it exists, +1 to counter
    @@artists.each_with_object({}) do |artist, hash|
      hash[artist] ||= 0
      hash[artist] += 1
    end 
  end

end
