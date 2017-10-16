class Album < ApplicationRecord
	
	validates :title, presence: true, 
	 length: { minimum: 3}
	 validates :artist_name, presence: true, 
	 length: { minimum: 3}
  
  belongs_to :user 
  has_many :songs
  has_many :categories

  acts_as_taggable

  has_attached_file :image, styles: { medium: "300x300>", thumb: "200x200#"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\z/

end
