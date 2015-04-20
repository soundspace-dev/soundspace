require 'test_helper'

class SpacesControllerTest < ActionController::TestCase
  setup do
    @space = spaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create space" do
    assert_difference('Space.count') do
      post :create, space: { active: @space.active, address: @space.address, calendar_id: @space.calendar_id, city: @space.city, description: @space.description, equipment: @space.equipment, features: @space.features, name: @space.name, owner_id: @space.owner_id, rate_daily: @space.rate_daily, rate_halfday: @space.rate_halfday, rate_hourly: @space.rate_hourly, rate_weekly: @space.rate_weekly, state: @space.state }
    end

    assert_redirected_to space_path(assigns(:space))
  end

  test "should show space" do
    get :show, id: @space
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @space
    assert_response :success
  end

  test "should update space" do
    patch :update, id: @space, space: { active: @space.active, address: @space.address, calendar_id: @space.calendar_id, city: @space.city, description: @space.description, equipment: @space.equipment, features: @space.features, name: @space.name, owner_id: @space.owner_id, rate_daily: @space.rate_daily, rate_halfday: @space.rate_halfday, rate_hourly: @space.rate_hourly, rate_weekly: @space.rate_weekly, state: @space.state }
    assert_redirected_to space_path(assigns(:space))
  end

  test "should destroy space" do
    assert_difference('Space.count', -1) do
      delete :destroy, id: @space
    end

    assert_redirected_to spaces_path
  end
end
