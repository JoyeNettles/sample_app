require 'rails_helper'

RSpec.describe "string_enforcers/edit", type: :view do
  before(:each) do
    @string_enforcer = assign(:string_enforcer, ExampleUser.create!())
  end

  it "renders the edit string_enforcer form" do
    render

    assert_select "form[action=?][method=?]", string_enforcer_path(@string_enforcer), "post" do
    end
  end
end
