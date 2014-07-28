class SongCategory < ActiveRecord::Base
	has_many :song_categorizations
	has_many :song_categories, :through => :song_categorizations
end
