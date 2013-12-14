require 'spec_helper'

describe "gadgets/index" do
  before(:each) do
    @gadgets = FactoryGirl.create_list(:gadget, 2)
  end

  it "renders a list of gadgets" do
    render

    # The listing table contains 2 columns:
    # ID: Gadget id
    # Name: Gadget name
    @gadgets.each do |gadget|
      assert_select "tr>td:nth-child(#{1})", text: gadget.id
      assert_select "tr>td:nth-child(#{2})", text: gadget.name
    end

    assert_select "form.form-search", count: 1
  end
end
