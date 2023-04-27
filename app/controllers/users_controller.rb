class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:password, :last_name, :first_name, :zipcode, :prefecture, :municipality,
                                 :address, :apartments, :email, :phone_number, :company_name)
  end

end
