class Album < ApplicationRecord
	
	validates :title, presence: true, 
	 length: { minimum: 3}
	 validates :artist_name, presence: true, 
	 length: { minimum: 3}
  
  belongs_to :user 
  has_many :songs
  has_many :categories

  acts_as_taggable
end
