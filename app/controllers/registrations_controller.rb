class RegistrationsController < Devise::RegistrationsController
  # POST /users
  def create
    @user = User.new
    @user.email = params[:data][:attributes][:email]
    @user.password = params[:data][:attributes][:password]
    @user.password_confirmation = params[:data][:attributes]['password-confirmation']
    @user.levelcompleted = '0'
   end
end
