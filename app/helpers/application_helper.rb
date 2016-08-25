module ApplicationHelper
    def id_to_name(id)
        User.find(id).username
    end

    def find_location
      @in_home = controller_name == 'welcome' && action_name == 'index'
      @in_new_tweet = controller_name == 'tweets' && action_name == 'new'
      @in_log_in = controller_name == 'sessions' && action_name == 'new'
      @in_sign_up = controller_name == 'users' && action_name == 'new'
      @in_profile = controller_name == 'users' && action_name == 'show' && session[:user_id].to_s == params[:id]
    end
end
