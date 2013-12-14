class Attachment < ActiveRecord::Base
	attr_accessible :image
	
	# Relations
	belongs_to :gadget

	# Attachment
	has_attached_file :image
end
