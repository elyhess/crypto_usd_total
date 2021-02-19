require 'rails_helper'

RSpec.describe "portfolios/new", type: :view do
  before(:each) do
    assign(:portfolio, Portfolio.new())
  end

  it "renders new portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolios_path, "post" do
    end
  end
end
