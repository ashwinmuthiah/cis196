class TasklistsController < ApplicationController
  def index
  	@tasklists = Tasklist.all
  end

  def new
    if !user_signed_in?
      redirect_to new_user_session_path
    end
  	@tasklist = Tasklist.new
  end

  def create
  	@tasklist = Tasklist.new(params[:tasklist]) # Need more code here - missed it in class
  	if @tasklist.user_id != current_user.id
      render "new"
    else
      if @tasklist.save
        Notifications.new_tasklist(@tasklist).deliver
     	  redirect_to tasklists_path
  	 else
    		render "new"
      end
    end
  end

    def destroy
    @tasklist = Tasklist.find(params[:id])
    @tasklist.destroy
    redirect_to tasklists_path
  end

  def edit
  end

  def show
  end
end
