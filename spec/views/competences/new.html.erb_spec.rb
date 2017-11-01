# frozen_string_literal: true

require "rails_helper"

RSpec.describe "competences/new", type: :view do
  before(:each) do
    assign(:competence, Competence.new(
                          title: "MyString",
                          description: "MyText"
    ))
  end

  it "renders new competence form" do
    render

    assert_select "form[action=?][method=?]", competences_path, "post" do

      assert_select "input[name=?]", "competence[title]"

      assert_select "textarea[name=?]", "competence[description]"
    end
  end
end
