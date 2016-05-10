class CommentsController < ApplicationController

def create
	@article = article.find(params[:article_id])
	@comment = @article.comments.create(params[:comment].permit(:body))
	@comment.user_id = current_user.id if current_user 

	if @comment.save
		redirect_to article_path(@article), notice: 'Your comment has Posted'
	else
		redirect_to 'new'

end

def update
	@article = article.find(params[:article_id])
end

def edit
	@article = article.find(params[:article_id])
end

def destroy
	@article = article.find(params[:article_id])
end




end
