require 'pry'
class Artist
   
    attr_accessor :name, :song, :genre
    @@all = []
    def initialize (name)
        @name = name
        @song = song
       @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    def genres
        self.songs.map(&:genre)
        
    end




 



end

