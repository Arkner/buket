require 'spec_helper'

describe "fathers/new" do
  before(:each) do
    assign(:father, stub_model(Father,
      :name => "MyString",
      :surname => "MyString",
      :age => 1
    ).as_new_record)
  end

  it "renders new father form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fathers_path, :method => "post" do
      assert_select "input#father_name", :name => "father[name]"
      assert_select "input#father_surname", :name => "father[surname]"
      assert_select "input#father_age", :name => "father[age]"
    end
  end
end
