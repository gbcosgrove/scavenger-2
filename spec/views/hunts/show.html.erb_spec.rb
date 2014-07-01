require 'spec_helper'

describe "hunts/show" do
  before(:each) do
    @hunt = assign(:hunt, stub_model(Hunt,
      :challenge_count => 1,
      :creator => "Creator"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Creator/)
  end
end
