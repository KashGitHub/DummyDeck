require 'test_helper'

class NocsControllerTest < ActionController::TestCase
  setup do
    @noc = nocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create noc" do
    assert_difference('Noc.count') do
      post :create, :noc => { :code => @noc.code, :description => @noc.description }
    end

    assert_redirected_to noc_path(assigns(:noc))
  end

  test "should show noc" do
    get :show, :id => @noc
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @noc
    assert_response :success
  end

  test "should update noc" do
    put :update, :id => @noc, :noc => { :code => @noc.code, :description => @noc.description }
    assert_redirected_to noc_path(assigns(:noc))
  end

  test "should destroy noc" do
    assert_difference('Noc.count', -1) do
      delete :destroy, :id => @noc
    end

    assert_redirected_to nocs_path
  end
end
