require 'rails_helper'

RSpec.describe "meetings/edit", type: :view do
  before(:each) do
    @meeting = assign(:meeting, Meeting.create!(
      name: "MyString",
      user: nil
    ))
  end

  it "renders the edit meeting form" do
    render

    assert_select "form[action=?][method=?]", meeting_path(@meeting), "post" do

      assert_select "input[name=?]", "meeting[name]"

      assert_select "input[name=?]", "meeting[user_id]"
    end
  end
end
