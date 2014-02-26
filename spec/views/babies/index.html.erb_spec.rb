require 'spec_helper'

describe "babies/index" do
  before(:each) do
    assign(:babies, [
      stub_model(Baby,
        :name => "Name",
        :surname => "Surname",
        :age => 1,
        :father => nil
      ),
      stub_model(Baby,
        :name => "Name",
        :surname => "Surname",
        :age => 1,
        :father => nil
      )
    ])
  end

  it "renders a list of babies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
