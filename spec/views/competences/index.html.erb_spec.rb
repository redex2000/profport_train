require 'rails_helper'

RSpec.describe "competences/index", type: :view do
  before(:each) do
    assign(:competences, [
      Competence.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Competence.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of competences" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
