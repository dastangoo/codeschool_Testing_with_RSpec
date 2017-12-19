require 'rails_helper'

RSpec.describe "vampires/new", type: :view do
  before(:each) do
    assign(:vampire, Vampire.new(
      :name => "MyString"
    ))
  end

  it "renders new vampire form" do
    render

    assert_select "form[action=?][method=?]", vampires_path, "post" do

      assert_select "input[name=?]", "vampire[name]"
    end
  end
end
