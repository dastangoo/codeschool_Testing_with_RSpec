require 'rails_helper'

RSpec.describe "vampires/index", type: :view do
  before(:each) do
    assign(:vampires, [
      Vampire.create!(
        :name => "Name"
      ),
      Vampire.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of vampires" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
