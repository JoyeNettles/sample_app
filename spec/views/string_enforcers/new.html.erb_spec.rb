require 'rails_helper'

RSpec.describe "string_enforcers/new", type: :view do
  before(:each) do
    assign(:string_enforcer, ExampleUser.new())
  end

  it "renders new string_enforcer form" do
    render

    assert_select "form[action=?][method=?]", string_enforcers_path, "post" do
    end
  end
end
