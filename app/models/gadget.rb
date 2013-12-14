class Gadget < ActiveRecord::Base
  attr_accessible :name

  # Relations
  has_many :attachments
  
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
