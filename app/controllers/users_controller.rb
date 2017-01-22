class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    p @users
    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    user = User.new
    user.email = params[:data][:attributes][:email]
    user.password = params[:data][:attributes][:password]
    user.password_confirmation = params[:data][:attributes]['password-confirmation']
    user.levelcompleted = '1'
    if user.save
      render json: {"email":"testing@test.com","levelcompleted":"1"}, status: :created, location: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end
  # def create
  #   user = User.new
  #   user.email = params[:data][:attributes][:email]
  #   user.password = params[:data][:attributes][:password]
  #   user.password_confirmation = params[:data][:attributes]['password-confirmation']
  #   user.save!
  #   return head :ok
  # end
  # def create
  #   @user = User.new(user_params)
  #
  #   if @user.save
  #     render json: @user, status: :created, location: @user
  #   else
  #     render json: @user.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /users/1
  def update
    @user.levelcompleted = params[:data][:attributes][:levelcompleted]
    if @user.save
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      if params[:id]
        @user = User.find(params[:id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :levelcompleted)
      # params.require(:user).permit(:email, :password, :password_confirmation, :levelcompleted)
    end
end
