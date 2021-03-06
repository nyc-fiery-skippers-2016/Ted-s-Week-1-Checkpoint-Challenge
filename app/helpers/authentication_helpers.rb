def current_user
  User.find(session[:user_id])
end

def logged_in?
  session[:user_id] && current_user.present?
end

def redirect_unless_logged_in
  redirect '/' if !logged_in
end

def redirect_unless_I_am(user)
  redirect '/' unless current_user == user
end
