require 'test_helper'

class OffenceTypesControllerTest < ActionController::TestCase
  setup do
    @offence_type = offence_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offence_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offence_type" do
    assert_difference('OffenceType.count') do
      post :create, offence_type: { descr: @offence_type.descr, fine_from: @offence_type.fine_from, fine_to: @offence_type.fine_to, points: @offence_type.points }
    end

    assert_redirected_to offence_type_path(assigns(:offence_type))
  end

  test "should show offence_type" do
    get :show, id: @offence_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offence_type
    assert_response :success
  end

  test "should update offence_type" do
    put :update, id: @offence_type, offence_type: { descr: @offence_type.descr, fine_from: @offence_type.fine_from, fine_to: @offence_type.fine_to, points: @offence_type.points }
    assert_redirected_to offence_type_path(assigns(:offence_type))
  end

  test "should destroy offence_type" do
    assert_difference('OffenceType.count', -1) do
      delete :destroy, id: @offence_type
    end

    assert_redirected_to offence_types_path
  end
end
