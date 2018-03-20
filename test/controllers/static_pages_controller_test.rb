require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home safe and dry" do
    get root_url
    assert_response :success
  end

  test "should get about" do
    get about_url
    assert_response :success
  end

  test "should get blog" do
    get blog_url
    assert_response :success
  end

  test "should get press" do
    get press_url
    assert_response :success
  end

  test "should get participate" do
    get participate_url
    assert_response :success
  end

  test "should get contact" do
    get contact_url
    assert_response :success
  end

  test "should get imprint" do
    get imprint_url
    assert_response :success
  end

end
