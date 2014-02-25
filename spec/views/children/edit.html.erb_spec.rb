require 'spec_helper'

describe "children/edit" do
  before(:each) do
    @child = assign(:child, stub_model(Child,
      :name => "MyString",
      :surname => "MyString",
      :age => 1
    ))
  end

  it "renders the edit child form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => children_path(@child), :method => "post" do
      assert_select "input#child_name", :name => "child[name]"
      assert_select "input#child_surname", :name => "child[surname]"
      assert_select "input#child_age", :name => "child[age]"
    end
  end
end
