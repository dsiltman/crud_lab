require 'spec_helper'

describe "gallions/new.html.erb" do
  before(:each) do
    assign(:gallion, stub_model(Gallion,
      :model_number => 1,
      :ship_name => "MyString"
    ).as_new_record)
  end

  it "renders new gallion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gallions_path, :method => "post" do
      assert_select "input#gallion_model_number", :name => "gallion[model_number]"
      assert_select "input#gallion_ship_name", :name => "gallion[ship_name]"
    end
  end
end
