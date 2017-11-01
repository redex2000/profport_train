# frozen_string_literal: true

require "rails_helper"

feature "Open main page" do
  scenario "main page is competence list" do
    visit root_path
    expect(page).to have_content "Компетенции"
  end
end
