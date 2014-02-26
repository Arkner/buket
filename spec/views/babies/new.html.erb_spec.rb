require 'spec_helper'

describe "babies/new" do
  before(:each) do
    assign(:baby, stub_model(Baby,
      :name => "MyString",
      :surname => "MyString",
      :age => 1,
      :father => nil
    ).as_new_record)
  end

  it "renders new baby form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => babies_path, :method => "post" do
      assert_select "input#baby_name", :name => "baby[name]"
      assert_select "input#baby_surname", :name => "baby[surname]"
      assert_select "input#baby_age", :name => "baby[age]"
      assert_select "input#baby_father", :name => "baby[father]"
    end
  end
end
