require "application_system_test_case"

class PhotosTest < ApplicationSystemTestCase
  setup do
    @photo = photos(:one)
  end

  test "visiting the index" do
    visit photos_url
    assert_selector "h1", text: "Photos"
  end

  test "creating a Photo" do
    visit photos_url
    click_on "New Photo"

    fill_in "Description", with: @photo.description
    fill_in "Food truck", with: @photo.food_truck_id
    fill_in "Image content type", with: @photo.image_content_type
    fill_in "Image file name", with: @photo.image_file_name
    fill_in "Image file size", with: @photo.image_file_size
    fill_in "Photo title", with: @photo.photo_title
    fill_in "Taken on", with: @photo.taken_on
    click_on "Create Photo"

    assert_text "Photo was successfully created"
    click_on "Back"
  end

  test "updating a Photo" do
    visit photos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @photo.description
    fill_in "Food truck", with: @photo.food_truck_id
    fill_in "Image content type", with: @photo.image_content_type
    fill_in "Image file name", with: @photo.image_file_name
    fill_in "Image file size", with: @photo.image_file_size
    fill_in "Photo title", with: @photo.photo_title
    fill_in "Taken on", with: @photo.taken_on
    click_on "Update Photo"

    assert_text "Photo was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo" do
    visit photos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo was successfully destroyed"
  end
end
