def session_user
  User.find_by(username: session["username"])
end
