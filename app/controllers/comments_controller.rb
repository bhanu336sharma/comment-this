class CommentsController < ApplicationController
  # before_action :authenticate_user!
	def index
    @comment = Comment.all

  end

  def addcomment
    Comment.create(user_id: params[:user_id],body: params[:body],time: params[:time], color: params[:color], pos: params[:pos] )
		# @comment = current_user.comments.create(body: params[:body],time: params[:time], color: params[:color], pos: params[:pos])#Comment.new
    render :json => {status: "ok"}
	end

	# def create
 #    	@user = User.find(params[:user_id])
 #    	@comment = @user.comments.create(comment_params)
 #  end

   
  	# private
   #  def comment_params
   #    params.require(:comment).permit(:commenter, :body)
   #  end
end

