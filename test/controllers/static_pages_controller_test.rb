require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get calendar" do
    get static_pages_calendar_url
    assert_response :success
  end

  test "should get blog" do
    get static_pages_blog_url
    assert_response :success
  end

  test "should get press" do
    get static_pages_press_url
    assert_response :success
  end

  test "should get participate" do
    get static_pages_participate_url
    assert_response :success
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

  test "should get imprint" do
    get static_pages_imprint_url
    assert_response :success
  end

end
