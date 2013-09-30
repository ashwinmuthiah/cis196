class AdminsController < ApplicationController
  def new
  	@admin = Admin.new
  end

  def index
  	@admins = Admin.all
  end

  def create
  	@admin = Admin.new(params[:admin])
  	if @admin.save
  		redirect_to admins_path
  	end
  end

end
