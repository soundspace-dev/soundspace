require 'test_helper'

class BookingsControllerTest < ActionController::TestCase
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post :create, booking: { active: @booking.active, checkin: @booking.checkin, checkout: @booking.checkout, confirm_by: @booking.confirm_by, confirm_date: @booking.confirm_date, pay_date: @booking.pay_date, pay_type: @booking.pay_type, space_id: @booking.space_id, status: @booking.status }
    end

    assert_redirected_to booking_path(assigns(:booking))
  end

  test "should show booking" do
    get :show, id: @booking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booking
    assert_response :success
  end

  test "should update booking" do
    patch :update, id: @booking, booking: { active: @booking.active, checkin: @booking.checkin, checkout: @booking.checkout, confirm_by: @booking.confirm_by, confirm_date: @booking.confirm_date, pay_date: @booking.pay_date, pay_type: @booking.pay_type, space_id: @booking.space_id, status: @booking.status }
    assert_redirected_to booking_path(assigns(:booking))
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete :destroy, id: @booking
    end

    assert_redirected_to bookings_path
  end
end
