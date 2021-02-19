require 'rails_helper'

RSpec.describe "portfolios/index", type: :view do
  before(:each) do
    assign(:portfolios, [
      Portfolio.create!(),
      Portfolio.create!()
    ])
  end

  it "renders a list of portfolios" do
    render
  end
end
