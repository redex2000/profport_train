module UsersHelper
  def role(user)
    if user.admin
      "Администратор"
    else
      "Пользователь"
    end
  end
end
