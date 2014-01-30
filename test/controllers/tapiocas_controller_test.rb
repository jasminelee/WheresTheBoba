require 'test_helper'

class TapiocasControllerTest < ActionController::TestCase
  setup do
    @tapioca = tapiocas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tapiocas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tapioca" do
    assert_difference('Tapioca.count') do
      post :create, tapioca: { description: @tapioca.description, name: @tapioca.name, picture: @tapioca.picture }
    end

    assert_redirected_to tapioca_path(assigns(:tapioca))
  end

  test "should show tapioca" do
    get :show, id: @tapioca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tapioca
    assert_response :success
  end

  test "should update tapioca" do
    patch :update, id: @tapioca, tapioca: { description: @tapioca.description, name: @tapioca.name, picture: @tapioca.picture }
    assert_redirected_to tapioca_path(assigns(:tapioca))
  end

  test "should destroy tapioca" do
    assert_difference('Tapioca.count', -1) do
      delete :destroy, id: @tapioca
    end

    assert_redirected_to tapiocas_path
  end
end
