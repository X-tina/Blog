class PostsController < ApplicationController
	
	def new
		@post = Post.new

		respond_to do |format|
      		format.html # new.html.erb
      		format.json { render json: @post }
    	end
	end

	def create
		@post = Post.new(params[:post])
 
  		if @post.save
  			#redirect_to :action => :show, :id => @post.id
  			redirect_to posts_path, :notice => "Your Post was Saved!"
  		else
  			render 'new'
  		end
	end

	
	def show
		@post = Post.find(params[:id])

		respond_to do |format|
      		format.html # show.html.erb
      		format.json { render json: @post}
    	end
	end

	
	def index
		@posts = Post.all

		respond_to do |format|
      		format.html # index.html.erb
      		format.json { render json: @posts }
    	end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
 
  		if @post.update_attributes(params[:post])
    		#redirect_to :action => :show, :id => @post.id
    		redirect_to posts_path, :notice => "Your Post was Update!"
  		else
    	render 'edit'
  		end
	end

	def destroy
		@post = Post.find(params[:id]).destroy
		

		#redirect_to :action => index
		respond_to do |format|
      		#format.html { redirect_to posts_url }
      		format.html { redirect_to root_path }
      		format.json { head :no_content }
    	end
	end


end
