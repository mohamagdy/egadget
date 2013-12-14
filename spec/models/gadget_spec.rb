require 'spec_helper'

describe Gadget do
	describe "search" do
		before(:each) do
			@gadget_name = "Gadget"
			@gadget = FactoryGirl.create(:gadget, name: @gadget_name)
		end

		it "should return the matching gadgets by name" do
			gadgets =  Gadget.search({ name: @gadget_name})

			gadget.should_not be_empty
			gadget.should include(@gadget)
		end

		it "should not return any matching gadgets by name" do
			gadgets =  Gadget.search({ name: "Another Gadget"})

			gadget.should be_empty
			gadget.should_not include(@gadget)
		end
	end
end
