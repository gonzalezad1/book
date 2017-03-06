class Bookitem < ApplicationRecord
	belongs_to :user

 	validates :title, presence: true
 	validates :description, presence: true
 	validates :author, presence: true
 	validates :avatar, presence: true
 	#validates_extension_whitelist_of :avatar
	#validates_format_of :avatar, :with => BookUploader.extension_whitelist
	#validates_integrity_of :avatar
	# validates_integrity_of :avatar
	# validates_processing_of :avatar
	mount_uploader :avatar, BookUploader




end
