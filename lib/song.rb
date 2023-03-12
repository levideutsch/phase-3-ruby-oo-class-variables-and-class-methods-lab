require 'pry'

class Song 

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def  initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << artist
        @@genres << genre
    end 

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end 

# one = Song.new("hofachto", "avraham fried", "jewish")
# two = Song.new("vizakeni", "avraham fried", "jewish")
# three = Song.new("Rabbis son", "8th day", "jewish hip")


# binding.pry