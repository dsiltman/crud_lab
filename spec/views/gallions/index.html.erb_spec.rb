require 'spec_helper'

describe "gallions/index.html.erb" do
  before(:each) do
    assign(:gallions, [
      stub_model(Gallion,
        :model_number => 1,
        :ship_name => "Ship Name"
      ),
      stub_model(Gallion,
        :model_number => 1,
        :ship_name => "Ship Name"
      )
    ])
  end

  it "renders a list of gallions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ship Name".to_s, :count => 2
  end
end
