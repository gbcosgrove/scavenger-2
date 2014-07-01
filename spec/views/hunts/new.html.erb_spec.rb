require 'spec_helper'

describe "hunts/new" do
  before(:each) do
    assign(:hunt, stub_model(Hunt,
      :challenge_count => 1,
      :creator => "MyString"
    ).as_new_record)
  end

  it "renders new hunt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hunts_path, "post" do
      assert_select "input#hunt_challenge_count[name=?]", "hunt[challenge_count]"
      assert_select "input#hunt_creator[name=?]", "hunt[creator]"
    end
  end
end
