class TasklistsController < ApplicationController
  def index
  	@tasklists = Tasklist.all
  end

  def new
  	@tasklist = Tasklist.new
  end

  def create
  	@tasklist = Tasklist.new(params[:tasklist]) # Need more code here - missed it in class
  	if @tasklist.save
  		redirect_to tasklists_path
  	else
  		render "new"
  	end
  end

  def edit
  end

  def show
  end
end
