class Users::SessionsController < Devise::SessionsController
  def sign_in_params
    params.require(:user).permit(:name, :email, :password, :remember_me )
  end
end

