class Artist
    attr_accessor :name, :genre, :song

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
     end

    def self.all
        @@all
    end

    def songs
        Song.all.select do  |song|
        song.artist == self
        end
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        song
    end

    def genres
        songs.map do |song|
        song.genre
        end
    end
end