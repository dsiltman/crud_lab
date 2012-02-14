require 'spec_helper'

describe "cannons/index.html.erb" do
  before(:each) do
    assign(:cannons, [
      stub_model(Cannon,
        :balls => 1,
        :kegs_of_powder => 1,
        :fuse_quantity => 1,
        :id_number => 1,
        :gallion_id => 1
      ),
      stub_model(Cannon,
        :balls => 1,
        :kegs_of_powder => 1,
        :fuse_quantity => 1,
        :id_number => 1,
        :gallion_id => 1
      )
    ])
  end

  it "renders a list of cannons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
