require 'test_helper'

class NocsRequirementsControllerTest < ActionController::TestCase
  setup do
    @nocs_requirement = nocs_requirements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nocs_requirements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nocs_requirement" do
    assert_difference('NocsRequirement.count') do
      post :create, :nocs_requirement => {  }
    end

    assert_redirected_to nocs_requirement_path(assigns(:nocs_requirement))
  end

  test "should show nocs_requirement" do
    get :show, :id => @nocs_requirement
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nocs_requirement
    assert_response :success
  end

  test "should update nocs_requirement" do
    put :update, :id => @nocs_requirement, :nocs_requirement => {  }
    assert_redirected_to nocs_requirement_path(assigns(:nocs_requirement))
  end

  test "should destroy nocs_requirement" do
    assert_difference('NocsRequirement.count', -1) do
      delete :destroy, :id => @nocs_requirement
    end

    assert_redirected_to nocs_requirements_path
  end
end
