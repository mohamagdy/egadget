require 'spec_helper'

describe "home/index.html.erb" do
	it "renders a list of gadgets" do
    render

    assert_select "div.hero-unit>h1", text: 'eGadget'
    assert_select "div.hero-unit>ul>li:nth-child(1)", text: 'Create Gadgets'
    assert_select "div.hero-unit>ul>li:nth-child(2)", text: 'List Gadgets'
    assert_select "div.hero-unit>ul>li:nth-child(3)", text: 'Search Gadgets'

    assert_select "div.hero-unit>a.btn-primary", text: 'Sign in'
    assert_select "div.hero-unit>a.btn-danger", text: 'Sign up'
  end
end
