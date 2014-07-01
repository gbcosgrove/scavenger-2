require 'spec_helper'

describe "hunts/index" do
  before(:each) do
    assign(:hunts, [
      stub_model(Hunt,
        :challenge_count => 1,
        :creator => "Creator"
      ),
      stub_model(Hunt,
        :challenge_count => 1,
        :creator => "Creator"
      )
    ])
  end

  it "renders a list of hunts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Creator".to_s, :count => 2
  end
end
