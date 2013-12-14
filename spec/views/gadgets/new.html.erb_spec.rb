require 'spec_helper'

describe "gadgets/new" do
  before(:each) do
    assign(:gadget, stub_model(Gadget,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new gadget form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gadgets_path, "post" do
      assert_select "input#gadget_name[name=?]", "gadget[name]"
    end
  end
end
