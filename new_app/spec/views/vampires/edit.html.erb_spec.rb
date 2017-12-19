require 'rails_helper'

RSpec.describe "vampires/edit", type: :view do
  before(:each) do
    @vampire = assign(:vampire, Vampire.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit vampire form" do
    render

    assert_select "form[action=?][method=?]", vampire_path(@vampire), "post" do

      assert_select "input[name=?]", "vampire[name]"
    end
  end
end
