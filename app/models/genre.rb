require_relative './concerns/slugifiable.rb'

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs
  has_many :song_genres
  has_many :songs, through: :song_genres

  include Slugifiable::INSTANCE
  extend Slugifiable::CLASS
end
