require 'test_helper'

class OmniauthsControllerTest < ActionController::TestCase
  setup do
    @omniauth = omniauths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:omniauths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create omniauth" do
    assert_difference('Omniauth.count') do
      post :create, omniauth: {  }
    end

    assert_redirected_to omniauth_path(assigns(:omniauth))
  end

  test "should show omniauth" do
    get :show, id: @omniauth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @omniauth
    assert_response :success
  end

  test "should update omniauth" do
    patch :update, id: @omniauth, omniauth: {  }
    assert_redirected_to omniauth_path(assigns(:omniauth))
  end

  test "should destroy omniauth" do
    assert_difference('Omniauth.count', -1) do
      delete :destroy, id: @omniauth
    end

    assert_redirected_to omniauths_path
  end
end
