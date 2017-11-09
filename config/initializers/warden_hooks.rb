Warden::Manager.after_set_user do |user, auth, opts|
  scope = opts[:scope]
  auth.cookies.signed["user.id"] = user.id
end

Warden::Manager.before_logout do |user, auth, opts|
  auth.cookies.signed["user.id"] = nil
end