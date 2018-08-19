require 'test_helper'

class CrumbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crumb = crumbs(:one)
  end

  test "should get index" do
    get crumbs_url
    assert_response :success
  end

  test "should get new" do
    get new_crumb_url
    assert_response :success
  end

  test "should create crumb" do
    assert_difference('Crumb.count') do
      post crumbs_url, params: { crumb: { crumb: @crumb.crumb } }
    end

    assert_redirected_to crumb_url(Crumb.last)
  end

  test "should show crumb" do
    get crumb_url(@crumb)
    assert_response :success
  end

  test "should get edit" do
    get edit_crumb_url(@crumb)
    assert_response :success
  end

  test "should update crumb" do
    patch crumb_url(@crumb), params: { crumb: { crumb: @crumb.crumb } }
    assert_redirected_to crumb_url(@crumb)
  end

  test "should destroy crumb" do
    assert_difference('Crumb.count', -1) do
      delete crumb_url(@crumb)
    end

    assert_redirected_to crumbs_url
  end
end
