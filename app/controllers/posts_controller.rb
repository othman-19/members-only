class PostsController < ApplicationController
  before_action :just_members, only: [:new, :create]
  def new
    @post = Post.new
  end
  def create
  end
  def index
  end
  private

    def just_members
      unless logged?
        flash[:danger] = 'You must be a member and logged in to do that'
        redirect_to login_path
      end
    end

    def post_params
      params.require(:post).permit(:title, :body, :author)
    end

end
