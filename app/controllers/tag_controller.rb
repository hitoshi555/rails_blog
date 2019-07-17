class TagController < ApplicationController
    def show
        tag = Tag.find(params[:id])
        @tweets = tag.tweets.all.order("created_at DESC").page(params[:page]).per(10)
    end

    def create
        @tweet = Tag.create(name: tweet_params[:name])
        redirect_to "/"
    end

    def tweet_params
		params.permit(:name)
	end
end
