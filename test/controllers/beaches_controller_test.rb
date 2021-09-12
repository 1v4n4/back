require "test_helper"

class BeachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beach = beaches(:one)
  end

  test "should get index" do
    get beaches_url
    assert_response :success
  end

  test "should get new" do
    get new_beach_url
    assert_response :success
  end

  test "should create beach" do
    assert_difference('Beach.count') do
      post beaches_url, params: { beach: { campground: @beach.campground, county: @beach.county, description: @beach.description, location: @beach.location, name: @beach.name, parking: @beach.parking, photo1: @beach.photo1, photo2: @beach.photo2, photo3: @beach.photo3, photo4: @beach.photo4, restrooms: @beach.restrooms } }
    end

    assert_redirected_to beach_url(Beach.last)
  end

  test "should show beach" do
    get beach_url(@beach)
    assert_response :success
  end

  test "should get edit" do
    get edit_beach_url(@beach)
    assert_response :success
  end

  test "should update beach" do
    patch beach_url(@beach), params: { beach: { campground: @beach.campground, county: @beach.county, description: @beach.description, location: @beach.location, name: @beach.name, parking: @beach.parking, photo1: @beach.photo1, photo2: @beach.photo2, photo3: @beach.photo3, photo4: @beach.photo4, restrooms: @beach.restrooms } }
    assert_redirected_to beach_url(@beach)
  end

  test "should destroy beach" do
    assert_difference('Beach.count', -1) do
      delete beach_url(@beach)
    end

    assert_redirected_to beaches_url
  end
end
