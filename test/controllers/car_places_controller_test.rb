require 'test_helper'

class CarPlacesControllerTest < ActionController::TestCase
  setup do
    @car_place = car_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_place" do
    assert_difference('CarPlace.count') do
      post :create, car_place: { car_id: @car_place.car_id, fecha_entrada: @car_place.fecha_entrada, fecha_salida: @car_place.fecha_salida, hora_entrada: @car_place.hora_entrada, hora_salida: @car_place.hora_salida, place_id: @car_place.place_id }
    end

    assert_redirected_to car_place_path(assigns(:car_place))
  end

  test "should show car_place" do
    get :show, id: @car_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_place
    assert_response :success
  end

  test "should update car_place" do
    patch :update, id: @car_place, car_place: { car_id: @car_place.car_id, fecha_entrada: @car_place.fecha_entrada, fecha_salida: @car_place.fecha_salida, hora_entrada: @car_place.hora_entrada, hora_salida: @car_place.hora_salida, place_id: @car_place.place_id }
    assert_redirected_to car_place_path(assigns(:car_place))
  end

  test "should destroy car_place" do
    assert_difference('CarPlace.count', -1) do
      delete :destroy, id: @car_place
    end

    assert_redirected_to car_places_path
  end
end
