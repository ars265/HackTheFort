require 'test_helper'

class StatisticsControllerTest < ActionController::TestCase
  setup do
    @statistic = statistics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statistics)
  end

  test "should create statistic" do
    assert_difference('Statistic.count') do
      post :create, statistic: {  }
    end

    assert_response 201
  end

  test "should show statistic" do
    get :show, id: @statistic
    assert_response :success
  end

  test "should update statistic" do
    put :update, id: @statistic, statistic: {  }
    assert_response 204
  end

  test "should destroy statistic" do
    assert_difference('Statistic.count', -1) do
      delete :destroy, id: @statistic
    end

    assert_response 204
  end
end
