class SubredditsController < ApplicationController
  def index
    @subreddits = Subreddit.all
  end

  def new
    @subreddit = Subreddit.new
  end

  def create
    @subreddit = Subreddit.new(subreddit_params)

    respond_to do |format|
      if @subreddit.save
        format.html { redirect_to subreddits_path, notice: 'Subreddit was successfully created.' }
        format.json { render :show, status: :created, location: @subreddit }
      else
        format.html { render :new }
        format.json { render json: @subreddit.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @subreddit = Subreddit.find(params[:id])
    @subreddit.destroy

    respond_to do |format|
      format.html { redirect_to subreddits_url, notice: 'Subreddit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def subreddit_params
    params.require(:subreddit).permit(:name)
  end
end
