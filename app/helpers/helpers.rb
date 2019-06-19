class Helpers
  def self.current_user(session)
    if session[:user_id] != nil
      user = User.find(session[:user_id])
    end
  end

  def self.is_logged_in?(session)
    if session[:user_id] == nil
      false
    else
      true
    end
  end
end