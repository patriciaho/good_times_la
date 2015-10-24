require 'test_helper'

class GoodTimesControllerTest < ActionController::TestCase
  setup do
    @good_time = good_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:good_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create good_time" do
    assert_difference('GoodTime.count') do
      post :create, good_time: { description: @good_time.description, name: @good_time.name, picture: @good_time.picture, visit: @good_time.visit }
    end

    assert_redirected_to good_time_path(assigns(:good_time))
  end

  test "should show good_time" do
    get :show, id: @good_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @good_time
    assert_response :success
  end

  test "should update good_time" do
    patch :update, id: @good_time, good_time: { description: @good_time.description, name: @good_time.name, picture: @good_time.picture, visit: @good_time.visit }
    assert_redirected_to good_time_path(assigns(:good_time))
  end

  test "should destroy good_time" do
    assert_difference('GoodTime.count', -1) do
      delete :destroy, id: @good_time
    end

    assert_redirected_to good_times_path
  end
end
