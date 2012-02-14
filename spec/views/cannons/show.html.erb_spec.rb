require 'spec_helper'

describe "cannons/show.html.erb" do
  before(:each) do
    @cannon = assign(:cannon, stub_model(Cannon,
      :balls => 1,
      :kegs_of_powder => 1,
      :fuse_quantity => 1,
      :id_number => 1,
      :gallion_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
