require 'rails_helper'

RSpec.describe "string_enforcers/show", type: :view do
  before(:each) do
    @string_enforcer = assign(:string_enforcer, ExampleUser.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
