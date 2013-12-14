require 'spec_helper'

describe "gadgets/edit" do
  before(:each) do
    @gadget = assign(:gadget, stub_model(Gadget,
      :name => "MyString"
    ))
  end

  it "renders the edit gadget form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gadget_path(@gadget), "post" do
      assert_select "input#gadget_name[name=?]", "gadget[name]"
    end
  end
end
