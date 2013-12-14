require 'spec_helper'

describe "gadgets/show" do
  before(:each) do
    @gadget = FactoryGirl.create(:gadget)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
