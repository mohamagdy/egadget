require 'spec_helper'

describe Gadget do
	describe "search" do
		before(:each) do
			@gadget_name = "Gadget"
			@gadget = FactoryGirl.create(:gadget, name: @gadget_name)
		end

		it "should return the matching gadgets by name" do
			gadgets =  Gadget.search({ name: @gadget_name})

			gadgets.should_not be_empty
			gadgets.should include(@gadget)
		end

		it "should not return any matching gadgets by name" do
			gadgets =  Gadget.search({ name: "Another Gadget"})

			gadgets.should be_empty
			gadgets.should_not include(@gadget)
		end
	end

	describe "attachments" do
		before(:each) do
			gadget = FactoryGirl.create(:gadget)
		end

		it "should return the gadget images" do
			gadget.attachments.should be_empty
		end
	end
end
