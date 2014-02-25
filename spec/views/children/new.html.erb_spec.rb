require 'spec_helper'

describe "children/new" do
  before(:each) do
    assign(:child, stub_model(Child,
      :name => "MyString",
      :surname => "MyString",
      :age => 1
    ).as_new_record)
  end

  it "renders new child form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => children_path, :method => "post" do
      assert_select "input#child_name", :name => "child[name]"
      assert_select "input#child_surname", :name => "child[surname]"
      assert_select "input#child_age", :name => "child[age]"
    end
  end
end
