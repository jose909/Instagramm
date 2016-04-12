class Pic < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true
	validates :image_file_name, presence: true


	acts_as_votable
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	
end
