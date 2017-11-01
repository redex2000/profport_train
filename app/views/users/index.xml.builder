xml.instruct!
xml.users do
  @users.each do |user|
    xml.user do
      xml.id user.id
      xml.email user.email
    end
  end
end