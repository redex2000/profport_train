# frozen_string_literal: true

require "rails_helper"

feature "create new competence" do
  let(:name) { "Веб-разработка на Rails" }
  scenario "" do
    visit competences_path
    click_on "Создать"
    fill_in "Название", with: name
    fill_in "Описание", with: "Создание веб-приложений, используя фреймворк Rails"
    click_on "Создать"
    expect(page).to have_content name
  end
end
