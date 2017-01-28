class InfosController < ApplicationController
  before_action :set_info, only: [:show, :update, :destroy]

  # GET /infos
  def index
    # @infos = Info.all
    #
    # render json: @infos
    render :template => 'static_pages/home'
  end

  # GET /infos/1
  def show
    # render json: @info
    render :template => 'static_pages/home' 
  end

  # POST /infos
  def create
    @info = Info.new
    @info.email = params[:data][:attributes][:email]
    @info.gender = params[:data][:attributes][:gender]
    @info.age = params[:data][:attributes][:age]
    @info.experience = params[:data][:attributes][:experience]
    @info.enjoy = params[:data][:attributes][:enjoy]
    @info.language = params[:data][:attributes][:language]

    if @info.save
      render json: @info, status: :created, location: @info
    else
      render json: @info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /infos/1
  def update
    if @info.update(info_params)
      render json: @info
    else
      render json: @info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /infos/1
  def destroy
    @info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = Info.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def info_params
      params.require(:info).permit(:email, :gender, :age, :experience, :enjoy, :language)
    end
end
