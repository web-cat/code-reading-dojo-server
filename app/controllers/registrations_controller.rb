class RegistrationsController < Devise::RegistrationsController
  # POST /users
  def create
    @user = User.new
    @user.email = params[:data][:attributes][:email]
    @user.password = params[:data][:attributes][:password]
    @user.password_confirmation = params[:data][:attributes]['password-confirmation']
    @user.levelcompleted = params[:data][:attributes][:levelcompleted]
    @user.consent = params[:data][:attributes][:consent]
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
   end
end
