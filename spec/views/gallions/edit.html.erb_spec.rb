require 'spec_helper'

describe "gallions/edit.html.erb" do
  before(:each) do
    @gallion = assign(:gallion, stub_model(Gallion,
      :model_number => 1,
      :ship_name => "MyString"
    ))
  end

  it "renders the edit gallion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gallions_path(@gallion), :method => "post" do
      assert_select "input#gallion_model_number", :name => "gallion[model_number]"
      assert_select "input#gallion_ship_name", :name => "gallion[ship_name]"
    end
  end
end
