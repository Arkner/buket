require 'spec_helper'

describe "fathers/edit" do
  before(:each) do
    @father = assign(:father, stub_model(Father,
      :name => "MyString",
      :surname => "MyString",
      :age => 1
    ))
  end

  it "renders the edit father form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fathers_path(@father), :method => "post" do
      assert_select "input#father_name", :name => "father[name]"
      assert_select "input#father_surname", :name => "father[surname]"
      assert_select "input#father_age", :name => "father[age]"
    end
  end
end
