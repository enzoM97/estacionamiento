class CarPlacesController < ApplicationController
  before_action :set_car_place, only: [:show, :edit, :update, :destroy]

  # GET /car_places
  # GET /car_places.json
  def index
    @car_places = CarPlace.all
  end

  # GET /car_places/1
  # GET /car_places/1.json
  def show
  end

  # GET /car_places/new
  def new
    @car_place = CarPlace.new
  end

  # GET /car_places/1/edit
  def edit
  end

  # POST /car_places
  # POST /car_places.json
  def create
    @car_place = CarPlace.new(car_place_params)

    respond_to do |format|
      if @car_place.save
        format.html { redirect_to @car_place, notice: 'Car place was successfully created.' }
        format.json { render :show, status: :created, location: @car_place }
      else
        format.html { render :new }
        format.json { render json: @car_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_places/1
  # PATCH/PUT /car_places/1.json
  def update
    respond_to do |format|
      if @car_place.update(car_place_params)
        format.html { redirect_to @car_place, notice: 'Car place was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_place }
      else
        format.html { render :edit }
        format.json { render json: @car_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_places/1
  # DELETE /car_places/1.json
  def destroy
    @car_place.destroy
    respond_to do |format|
      format.html { redirect_to car_places_url, notice: 'Car place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_place
      @car_place = CarPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_place_params
      params.require(:car_place).permit(:hora_entrada, :hora_salida, :fecha_entrada, :fecha_salida, :car_id, :place_id)
    end
end
