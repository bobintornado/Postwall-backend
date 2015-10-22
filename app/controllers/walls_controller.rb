class WallsController < ApplicationController
  before_action :set_wall, only: [:show, :update, :destroy]

  # GET /walls
  def index
    @walls = Wall.all

    render json: @walls
  end

  # GET /walls/1
  def show
    render json: @wall
  end

  # POST /walls
  def create
    @wall = Wall.new(wall_params)

    if @wall.save
      render json: @wall, status: :created, location: @wall
    else
      render json: @wall.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /walls/1
  def update
    if @wall.update(wall_params)
      render json: @wall
    else
      render json: @wall.errors, status: :unprocessable_entity
    end
  end

  # DELETE /walls/1
  def destroy
    @wall.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wall
      @wall = Wall.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wall_params
      params[:wall]
    end
end
