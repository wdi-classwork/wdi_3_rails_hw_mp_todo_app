require 'rails_helper'

RSpec.describe "lists/edit", :type => :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(@list), "post" do

      assert_select "input#list_title[name=?]", "list[title]"
    end
  end
end
