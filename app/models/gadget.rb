class Gadget < ActiveRecord::Base
  # Accessible attributes
  attr_accessible :name, :attachments_attributes

  # Relations
  has_many :attachments
  
  accepts_nested_attributes_for :attachments

  # Searches the gadgets
  # Params:
  # 	filter: a hash of fields need to be search
  # Returns:
  # 	Array of matching gadgets
  # Example:
  # 	Gadget.search({ name: 'Gadget' }) => [#<Gadget id: 1, nam..]
  def self.search(filter = {})
  	self.where(filter)
  end
end
