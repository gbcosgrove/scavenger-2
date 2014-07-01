require 'spec_helper'

describe "hunts/edit" do
  before(:each) do
    @hunt = assign(:hunt, stub_model(Hunt,
      :challenge_count => 1,
      :creator => "MyString"
    ))
  end

  it "renders the edit hunt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hunt_path(@hunt), "post" do
      assert_select "input#hunt_challenge_count[name=?]", "hunt[challenge_count]"
      assert_select "input#hunt_creator[name=?]", "hunt[creator]"
    end
  end
end
