module UsersHelper
  def is_my_profile?
    current_user == @user 
  end
end
