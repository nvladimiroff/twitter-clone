class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show]

  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweet.all
  end

  # GET /tweets/1
  # GET /tweets/1.json
  def show
      set_tweet
  end

  # GET /tweets/new
  def new
    @tweet = Tweet.new
  end

  # POST /tweets
  # POST /tweets.json
  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = session[:user_id]

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to @tweet, notice: 'Tweet was successfully created.' }
        format.json { render :show, status: :created, location: @tweet }
      else
        format.html { render :new }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_params
      params.require(:tweet).permit(:body)
    end
end
