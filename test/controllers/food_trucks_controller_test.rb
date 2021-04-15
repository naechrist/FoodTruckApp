require 'test_helper'

class FoodTrucksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_truck = food_trucks(:one)
  end

  test "should get index" do
    get food_trucks_url
    assert_response :success
  end

  test "should get new" do
    get new_food_truck_url
    assert_response :success
  end

  test "should create food_truck" do
    assert_difference('FoodTruck.count') do
      post food_trucks_url, params: { food_truck: { location: @food_truck.location, menu: @food_truck.menu, name: @food_truck.name, price: @food_truck.price } }
    end

    assert_redirected_to food_truck_url(FoodTruck.last)
  end

  test "should show food_truck" do
    get food_truck_url(@food_truck)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_truck_url(@food_truck)
    assert_response :success
  end

  test "should update food_truck" do
    patch food_truck_url(@food_truck), params: { food_truck: { location: @food_truck.location, menu: @food_truck.menu, name: @food_truck.name, price: @food_truck.price } }
    assert_redirected_to food_truck_url(@food_truck)
  end

  test "should destroy food_truck" do
    assert_difference('FoodTruck.count', -1) do
      delete food_truck_url(@food_truck)
    end

    assert_redirected_to food_trucks_url
  end
end
