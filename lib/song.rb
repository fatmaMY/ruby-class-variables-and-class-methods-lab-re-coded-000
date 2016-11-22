class Song
  @@count=0
  @@genres=[]
  @@artists=[]
attr_accessor :name, :artist, :genre
  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@genres << genre
      @@artists << artist

  end
  def self.count
    @@count
  end
  def self.genres
@@genres.uniq!
  end
def self.artists
@@artists.uniq!
end
def self.genre_count
  genre_hash={}
  @@genres.each do |item|
    if genre_hash.key?(item)
       genre_hash[item]+=1
     else
        genre_hash[item]=1
      end
    end
      genre_hash
    end
    def self.artist_count
      art_hash={}
      @@artists.each do |item|
        if art_hash.key?(item)
           art_hash[item]+=1
         else
            art_hash[item]=1
          end
        end
          art_hash
        end
end
