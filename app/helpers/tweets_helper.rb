module TweetsHelper
    def id_to_name(id)
        User.find(id).username
    end
end
