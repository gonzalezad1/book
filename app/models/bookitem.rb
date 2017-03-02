class Bookitem < ApplicationRecord
	belongs_to :user


 	mount_uploader :avatar, AvatarUploader
 	validates :title, presence: true
 	validates :description, presence: true
 	validates :author, presence: true
 	 #validates_format_of :icon,
	  #:with    => %r{^balls/.+}i,
  	  #:message => "must start with 'balls/' and have a filename"

	validates_format_of :avatar, :with => %r{\.(gif|jpe?g|png)\z}i,:message => "must have an image extension"



end
