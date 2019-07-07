class UsersController < ApplicationController
    def show
        @tweets = current_user.tweets.order("created_at DESC")
    end
end
