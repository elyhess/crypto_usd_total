require 'rails_helper'

RSpec.describe "portfolios/edit", type: :view do
  before(:each) do
    @portfolio = assign(:portfolio, Portfolio.create!())
  end

  it "renders the edit portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolio_path(@portfolio), "post" do
    end
  end
end
