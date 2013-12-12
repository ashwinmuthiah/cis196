class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def index
  	@users = User.all
  end

  def searched # FOR SEARCHING!
    @users = User.where("name LIKE ?", "%" + params[:search_params] +"%")
    render 'index' # render doesn't redirect (or reload), it just renders a view
  end

 #  def create
 #  	@user = User.new(params[:user])
 #  	if @user.save
 #  		redirect_to root_path
 #    else
 #      redirect_to new_user_session_path
 #  	end
	# end

  # def show
  #   @user = User.find(params[:id])
  # end

  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   @user = User.find(params[:id])
  #   if @user.update_attributes(params[:user])
  #     redirect_to user_path(@user.id)
  #   else
  #     render 'edit'
  #   end
  # end

  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #   redirect_to users_path
  # end

end
