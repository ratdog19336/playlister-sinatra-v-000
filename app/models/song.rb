class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres
  include Slugifiable::InstanceMethods
  extend Slugifiable::ClassMethods

  def self.update_genres(params)
    @song = Song.find_by_slug(params[:slug])
    genres = params[:genres]
    new_genre_array = genres.collect do |genre_id|
      Genre.find_by(id: genre_id)
    end
    new_genre_array
  end

  def add_genre(genre)

  end

  def remove_genre(genre)

  end
end
  
