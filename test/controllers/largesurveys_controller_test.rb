require 'test_helper'

class LargesurveysControllerTest < ActionController::TestCase
  setup do
    @largesurvey = largesurveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:largesurveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create largesurvey" do
    assert_difference('Largesurvey.count') do
      post :create, largesurvey: { name: @largesurvey.name, review: @largesurvey.review }
    end

    assert_redirected_to largesurvey_path(assigns(:largesurvey))
  end

  test "should show largesurvey" do
    get :show, id: @largesurvey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @largesurvey
    assert_response :success
  end

  test "should update largesurvey" do
    patch :update, id: @largesurvey, largesurvey: { name: @largesurvey.name, review: @largesurvey.review }
    assert_redirected_to largesurvey_path(assigns(:largesurvey))
  end

  test "should destroy largesurvey" do
    assert_difference('Largesurvey.count', -1) do
      delete :destroy, id: @largesurvey
    end

    assert_redirected_to largesurveys_path
  end
end
