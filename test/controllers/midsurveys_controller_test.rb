require 'test_helper'

class MidsurveysControllerTest < ActionController::TestCase
  setup do
    @midsurvey = midsurveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:midsurveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create midsurvey" do
    assert_difference('Midsurvey.count') do
      post :create, midsurvey: { name: @midsurvey.name, review: @midsurvey.review }
    end

    assert_redirected_to midsurvey_path(assigns(:midsurvey))
  end

  test "should show midsurvey" do
    get :show, id: @midsurvey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @midsurvey
    assert_response :success
  end

  test "should update midsurvey" do
    patch :update, id: @midsurvey, midsurvey: { name: @midsurvey.name, review: @midsurvey.review }
    assert_redirected_to midsurvey_path(assigns(:midsurvey))
  end

  test "should destroy midsurvey" do
    assert_difference('Midsurvey.count', -1) do
      delete :destroy, id: @midsurvey
    end

    assert_redirected_to midsurveys_path
  end
end
