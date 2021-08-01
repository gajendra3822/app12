require "test_helper"

class TestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tester = testers(:one)
  end

  test "should get index" do
    get testers_url
    assert_response :success
  end

  test "should get new" do
    get new_tester_url
    assert_response :success
  end

  test "should create tester" do
    assert_difference('Tester.count') do
      post testers_url, params: { tester: {  } }
    end

    assert_redirected_to tester_url(Tester.last)
  end

  test "should show tester" do
    get tester_url(@tester)
    assert_response :success
  end

  test "should get edit" do
    get edit_tester_url(@tester)
    assert_response :success
  end

  test "should update tester" do
    patch tester_url(@tester), params: { tester: {  } }
    assert_redirected_to tester_url(@tester)
  end

  test "should destroy tester" do
    assert_difference('Tester.count', -1) do
      delete tester_url(@tester)
    end

    assert_redirected_to testers_url
  end
end
