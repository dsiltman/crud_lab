require 'spec_helper'

describe "gallions/show.html.erb" do
  before(:each) do
    @gallion = assign(:gallion, stub_model(Gallion,
      :model_number => 1,
      :ship_name => "Ship Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ship Name/)
  end
end
