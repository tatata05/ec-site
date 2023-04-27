class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.assign_attributes(user_params)
    if @user.save
      redirect_to @user
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:password, :last_name, :first_name, :zipcode, :prefecture, :municipality,
                                 :address, :apartments, :email, :phone_number, :company_name)
  end

end
