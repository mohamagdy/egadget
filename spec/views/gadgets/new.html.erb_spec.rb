require 'spec_helper'

describe "gadgets/new" do
  before(:each) do
    @gadget = FactoryGirl.build(:gadget)
  end

  it "renders new gadget form" do
    render

    assert_select "form[action=?][method=?]", gadgets_path, "post" do
      assert_select "input#gadget_name[name=?]", "gadget[name]"
    end
  end
end
