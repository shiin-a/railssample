require 'test_helper'

class HamstersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hamster = hamsters(:one)
  end

  test "should get index" do
    get hamsters_url
    assert_response :success
  end

  test "should get new" do
    get new_hamster_url
    assert_response :success
  end

  test "should create hamster" do
    assert_difference('Hamster.count') do
      post hamsters_url, params: { hamster: { city: @hamster.city, hamstername: @hamster.hamstername, high: @hamster.high } }
    end

    assert_redirected_to hamster_url(Hamster.last)
  end

  test "should show hamster" do
    get hamster_url(@hamster)
    assert_response :success
  end

  test "should get edit" do
    get edit_hamster_url(@hamster)
    assert_response :success
  end

  test "should update hamster" do
    patch hamster_url(@hamster), params: { hamster: { city: @hamster.city, hamstername: @hamster.hamstername, high: @hamster.high } }
    assert_redirected_to hamster_url(@hamster)
  end

  test "should destroy hamster" do
    assert_difference('Hamster.count', -1) do
      delete hamster_url(@hamster)
    end

    assert_redirected_to hamsters_url
  end
end
