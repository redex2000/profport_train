# frozen_string_literal: true

require "rails_helper"

RSpec.describe "competences/edit", type: :view do
  before(:each) do
    @competence = assign(:competence, Competence.create!(
                                        title: "MyString",
                                        description: "MyText"
    ))
  end

  it "renders the edit competence form" do
    render

    assert_select "form[action=?][method=?]", competence_path(@competence), "post" do

      assert_select "input[name=?]", "competence[title]"

      assert_select "textarea[name=?]", "competence[description]"
    end
  end
end
