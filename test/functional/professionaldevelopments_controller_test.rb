require 'test_helper'

class ProfessionaldevelopmentsControllerTest < ActionController::TestCase
  setup do
    @professionaldevelopment = professionaldevelopments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professionaldevelopments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professionaldevelopment" do
    assert_difference('Professionaldevelopment.count') do
      post :create, professionaldevelopment: @professionaldevelopment.attributes
    end

    assert_redirected_to professionaldevelopment_path(assigns(:professionaldevelopment))
  end

  test "should show professionaldevelopment" do
    get :show, id: @professionaldevelopment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professionaldevelopment
    assert_response :success
  end

  test "should update professionaldevelopment" do
    put :update, id: @professionaldevelopment, professionaldevelopment: @professionaldevelopment.attributes
    assert_redirected_to professionaldevelopment_path(assigns(:professionaldevelopment))
  end

  test "should destroy professionaldevelopment" do
    assert_difference('Professionaldevelopment.count', -1) do
      delete :destroy, id: @professionaldevelopment
    end

    assert_redirected_to professionaldevelopments_path
  end
end
