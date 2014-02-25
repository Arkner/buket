require 'spec_helper'

describe "fathers/show" do
  before(:each) do
    @father = assign(:father, stub_model(Father,
      :name => "Name",
      :surname => "Surname",
      :age => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Surname/)
    rendered.should match(/1/)
  end
end
