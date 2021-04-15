require "application_system_test_case"

class FoodTrucksTest < ApplicationSystemTestCase
  setup do
    @food_truck = food_trucks(:one)
  end

  test "visiting the index" do
    visit food_trucks_url
    assert_selector "h1", text: "Food Trucks"
  end

  test "creating a Food truck" do
    visit food_trucks_url
    click_on "New Food Truck"

    fill_in "Location", with: @food_truck.location
    fill_in "Menu", with: @food_truck.menu
    fill_in "Name", with: @food_truck.name
    fill_in "Price", with: @food_truck.price
    click_on "Create Food truck"

    assert_text "Food truck was successfully created"
    click_on "Back"
  end

  test "updating a Food truck" do
    visit food_trucks_url
    click_on "Edit", match: :first

    fill_in "Location", with: @food_truck.location
    fill_in "Menu", with: @food_truck.menu
    fill_in "Name", with: @food_truck.name
    fill_in "Price", with: @food_truck.price
    click_on "Update Food truck"

    assert_text "Food truck was successfully updated"
    click_on "Back"
  end

  test "destroying a Food truck" do
    visit food_trucks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Food truck was successfully destroyed"
  end
end
