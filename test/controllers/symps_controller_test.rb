require 'test_helper'

class SympsControllerTest < ActionController::TestCase
  setup do
    @symp = symps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:symps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create symp" do
    assert_difference('Symp.count') do
      post :create, symp: { maladie: @symp.maladie, symp1: @symp.symp1, symp2: @symp.symp2, symp3: @symp.symp3, symp4: @symp.symp4, symp5: @symp.symp5 }
    end

    assert_redirected_to symp_path(assigns(:symp))
  end

  test "should show symp" do
    get :show, id: @symp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @symp
    assert_response :success
  end

  test "should update symp" do
    patch :update, id: @symp, symp: { maladie: @symp.maladie, symp1: @symp.symp1, symp2: @symp.symp2, symp3: @symp.symp3, symp4: @symp.symp4, symp5: @symp.symp5 }
    assert_redirected_to symp_path(assigns(:symp))
  end

  test "should destroy symp" do
    assert_difference('Symp.count', -1) do
      delete :destroy, id: @symp
    end

    assert_redirected_to symps_path
  end
end
