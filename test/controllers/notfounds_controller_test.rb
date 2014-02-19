require 'test_helper'

class NotfoundsControllerTest < ActionController::TestCase
  setup do
    @notfound = notfounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notfounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notfound" do
    assert_difference('Notfound.count') do
      post :create, notfound: { site_url: @notfound.site_url }
    end

    assert_redirected_to notfound_path(assigns(:notfound))
  end

  test "should show notfound" do
    get :show, id: @notfound
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notfound
    assert_response :success
  end

  test "should update notfound" do
    patch :update, id: @notfound, notfound: { site_url: @notfound.site_url }
    assert_redirected_to notfound_path(assigns(:notfound))
  end

  test "should destroy notfound" do
    assert_difference('Notfound.count', -1) do
      delete :destroy, id: @notfound
    end

    assert_redirected_to notfounds_path
  end
end
