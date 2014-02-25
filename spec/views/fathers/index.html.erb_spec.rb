require 'spec_helper'

describe "fathers/index" do
  before(:each) do
    assign(:fathers, [
      stub_model(Father,
        :name => "Name",
        :surname => "Surname",
        :age => 1
      ),
      stub_model(Father,
        :name => "Name",
        :surname => "Surname",
        :age => 1
      )
    ])
  end

  it "renders a list of fathers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
