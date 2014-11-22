require 'test_helper'

class SmallsurveysControllerTest < ActionController::TestCase
  setup do
    @smallsurvey = smallsurveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smallsurveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smallsurvey" do
    assert_difference('Smallsurvey.count') do
      post :create, smallsurvey: { name: @smallsurvey.name, review: @smallsurvey.review }
    end

    assert_redirected_to smallsurvey_path(assigns(:smallsurvey))
  end

  test "should show smallsurvey" do
    get :show, id: @smallsurvey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smallsurvey
    assert_response :success
  end

  test "should update smallsurvey" do
    patch :update, id: @smallsurvey, smallsurvey: { name: @smallsurvey.name, review: @smallsurvey.review }
    assert_redirected_to smallsurvey_path(assigns(:smallsurvey))
  end

  test "should destroy smallsurvey" do
    assert_difference('Smallsurvey.count', -1) do
      delete :destroy, id: @smallsurvey
    end

    assert_redirected_to smallsurveys_path
  end
end
