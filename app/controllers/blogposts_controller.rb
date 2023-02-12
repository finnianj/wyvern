class BlogpostsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @blogposts = Blogpost.all
  end

  def new
    @blogpost = Blogpost.new
  end

  def create
    @blogpost = Blogpost.new(blogpost_params)
    if @blogpost.save
      redirect_to blogposts_path, notice: 'Post was successfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # TODO: MAKE ADMIN ONLY
    set_blogpost
    @blogpost.destroy
    redirect_to blogposts_path, notice: "Post was sucessfully obliterated"
  end


  private

  def set_blogpost
    @blogpost = Blogpost.find(params[:id])
  end

  def blogpost_params
    params.require(:blogpost).permit(:title, :author, :content, photos: [])
  end

end
