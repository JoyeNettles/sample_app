require 'rails_helper'

RSpec.describe "string_enforcers/index", type: :view do
  before(:each) do
    assign(:string_enforcers, [
        ExampleUser.create!(),
        ExampleUser.create!()
    ])
  end

  it "renders a list of string_enforcers" do
    render
  end
end
