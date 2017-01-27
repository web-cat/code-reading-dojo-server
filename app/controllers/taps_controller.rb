class TapsController < ApplicationController
  before_action :set_tap, only: [:show, :update, :destroy]

  # # GET /taps
  # def index
  #   @taps = Tap.all
  #
  #   render json: @taps
  # end
  #
  # # GET /taps/1
  # def show
  #   render json: @tap
  # end

  # POST /taps
  def create
    # @tap = Tap.new(tap_params)
    @tap = Tap.new
    @tap.email = params[:data][:attributes][:email]
    @tap.word = params[:data][:attributes][:word]
    @tap.success = params[:data][:attributes][:success]
    @tap.time = params[:data][:attributes][:time]
    @tap.level = params[:data][:attributes][:level]
    if @tap.save
      render json: @tap, status: :created, location: @tap
    else
      render json: @tap.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /taps/1
  def update
    if @tap.update(tap_params)
      render json: @tap
    else
      render json: @tap.errors, status: :unprocessable_entity
    end
  end

  # DELETE /taps/1
  def destroy
    @tap.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tap
      @tap = Tap.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tap_params
      params.require(:tap).permit(:email, :word, :success, :time, :level)
    end
end
