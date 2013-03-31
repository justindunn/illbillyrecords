require 'test_helper'

class UsedVinylsControllerTest < ActionController::TestCase
  setup do
    @used_vinyl = used_vinyls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:used_vinyls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create used_vinyl" do
    assert_difference('UsedVinyl.count') do
      post :create, used_vinyl: { album: @used_vinyl.album, artist: @used_vinyl.artist, price: @used_vinyl.price, price: @used_vinyl.price, purchased: @used_vinyl.purchased, type: @used_vinyl.type }
    end

    assert_redirected_to used_vinyl_path(assigns(:used_vinyl))
  end

  test "should show used_vinyl" do
    get :show, id: @used_vinyl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @used_vinyl
    assert_response :success
  end

  test "should update used_vinyl" do
    put :update, id: @used_vinyl, used_vinyl: { album: @used_vinyl.album, artist: @used_vinyl.artist, price: @used_vinyl.price, price: @used_vinyl.price, purchased: @used_vinyl.purchased, type: @used_vinyl.type }
    assert_redirected_to used_vinyl_path(assigns(:used_vinyl))
  end

  test "should destroy used_vinyl" do
    assert_difference('UsedVinyl.count', -1) do
      delete :destroy, id: @used_vinyl
    end

    assert_redirected_to used_vinyls_path
  end
end
