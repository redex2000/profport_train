require "rails_helper"

feature "create user" do
  scenario "valid values" do
    visit users_path
    click_on "Новый"
    fill_in "Электропочта", with: "user@mail.ru"
    fill_in "Пароль", with: "123456"
    click_on "Создать"
    expect(page).to have_content "Пользователь создан успешно"
    expect(find("tr:last-child td:first-child").text).to eq "user@mail.ru"
  end
end