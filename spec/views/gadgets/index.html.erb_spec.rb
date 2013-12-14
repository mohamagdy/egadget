require 'spec_helper'

describe "gadgets/index" do
  before(:each) do
    assign(:gadgets, [
      stub_model(Gadget,
        :name => "Name"
      ),
      stub_model(Gadget,
        :name => "Name"
      )
    ])
  end

  it "renders a list of gadgets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
