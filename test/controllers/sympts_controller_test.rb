require 'test_helper'

class SymptsControllerTest < ActionController::TestCase
  setup do
    @sympt = sympts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sympts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sympt" do
    assert_difference('Sympt.count') do
      post :create, sympt: { maladie: @sympt.maladie, symptome: @sympt.symptome }
    end

    assert_redirected_to sympt_path(assigns(:sympt))
  end

  test "should show sympt" do
    get :show, id: @sympt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sympt
    assert_response :success
  end

  test "should update sympt" do
    patch :update, id: @sympt, sympt: { maladie: @sympt.maladie, symptome: @sympt.symptome }
    assert_redirected_to sympt_path(assigns(:sympt))
  end

  test "should destroy sympt" do
    assert_difference('Sympt.count', -1) do
      delete :destroy, id: @sympt
    end

    assert_redirected_to sympts_path
  end
end
