require 'spec_helper'

describe "gadgets/show" do
  before(:each) do
    @gadget = FactoryGirl.create(:gadget)
  end

  it "renders attributes in <p> without attachment" do
    render
    expect(rendered).to match(/Name/)
    assert_select "img", count: 0
  end

  it "renders attributes in <p> without attachment" do
    @gadget.attachment_ids = [FactoryGirl.create(:attachment).id]
    
    render
    expect(rendered).to match(/Name/)
    assert_select "img", count: 1
  end
end
