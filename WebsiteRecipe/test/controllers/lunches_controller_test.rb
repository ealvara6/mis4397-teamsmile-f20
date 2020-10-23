require 'test_helper'

class LunchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lunch = lunches(:one)
  end

  test "should get index" do
    get lunches_url
    assert_response :success
  end

  test "should get new" do
    get new_lunch_url
    assert_response :success
  end

  test "should create lunch" do
    assert_difference('Lunch.count') do
      post lunches_url, params: { lunch: { host: @lunch.host, image: @lunch.image, ingredients: @lunch.ingredients, instructions: @lunch.instructions, title: @lunch.title, total_time: @lunch.total_time, yields: @lunch.yields } }
    end

    assert_redirected_to lunch_url(Lunch.last)
  end

  test "should show lunch" do
    get lunch_url(@lunch)
    assert_response :success
  end

  test "should get edit" do
    get edit_lunch_url(@lunch)
    assert_response :success
  end

  test "should update lunch" do
    patch lunch_url(@lunch), params: { lunch: { host: @lunch.host, image: @lunch.image, ingredients: @lunch.ingredients, instructions: @lunch.instructions, title: @lunch.title, total_time: @lunch.total_time, yields: @lunch.yields } }
    assert_redirected_to lunch_url(@lunch)
  end

  test "should destroy lunch" do
    assert_difference('Lunch.count', -1) do
      delete lunch_url(@lunch)
    end

    assert_redirected_to lunches_url
  end
end
