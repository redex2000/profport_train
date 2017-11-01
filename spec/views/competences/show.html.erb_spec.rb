# frozen_string_literal: true

require "rails_helper"

RSpec.describe "competences/show", type: :view do
  before(:each) do
    @competence = assign(:competence, Competence.create!(
                                        title: "Title",
                                        description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
