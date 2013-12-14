require 'spec_helper'

describe "gadgets/show" do
  before(:each) do
    @gadget = assign(:gadget, stub_model(Gadget,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
  end
end
