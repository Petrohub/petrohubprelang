require 'test_helper'

class GasstationsControllerTest < ActionController::TestCase
  setup do
    @gasstation = gasstations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gasstations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gasstation" do
    assert_difference('Gasstation.count') do
      post :create, gasstation: { retailer_id: @gasstation.retailer_id }
    end

    assert_redirected_to gasstation_path(assigns(:gasstation))
  end

  test "should show gasstation" do
    get :show, id: @gasstation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gasstation
    assert_response :success
  end

  test "should update gasstation" do
    patch :update, id: @gasstation, gasstation: { retailer_id: @gasstation.retailer_id }
    assert_redirected_to gasstation_path(assigns(:gasstation))
  end

  test "should destroy gasstation" do
    assert_difference('Gasstation.count', -1) do
      delete :destroy, id: @gasstation
    end

    assert_redirected_to gasstations_path
  end
end
