class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def stats
    @posts = Post.all
    @number_of_posts = Post.group(:user_id).select('*, count(*) AS num').order('num desc').first.num
    @most_posts_user = Post.group(:user_id).select('*, count(*) AS num').order('num desc').first.user.first_name
    @most_used_tags = Tag.joins(:taggings).group(:tag_id).select('*, count(*) AS num').order('num desc').limit(5)
    @longest_blog_post = Post.order('length(content) desc').first.title
  end

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @title = @post.title
    @author_first_name = @post.user.first_name
    @author_last_name = @post.user.last_name
    @date = @post.date
    @content = @post.content
    @category = @post.category.name
    @tags = @post.tags
    @comments = @post.comments
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :date)
    end
end
