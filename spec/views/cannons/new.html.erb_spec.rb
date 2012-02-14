require 'spec_helper'

describe "cannons/new.html.erb" do
  before(:each) do
    assign(:cannon, stub_model(Cannon,
      :balls => 1,
      :kegs_of_powder => 1,
      :fuse_quantity => 1,
      :id_number => 1,
      :gallion_id => 1
    ).as_new_record)
  end

  it "renders new cannon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cannons_path, :method => "post" do
      assert_select "input#cannon_balls", :name => "cannon[balls]"
      assert_select "input#cannon_kegs_of_powder", :name => "cannon[kegs_of_powder]"
      assert_select "input#cannon_fuse_quantity", :name => "cannon[fuse_quantity]"
      assert_select "input#cannon_id_number", :name => "cannon[id_number]"
      assert_select "input#cannon_gallion_id", :name => "cannon[gallion_id]"
    end
  end
end
