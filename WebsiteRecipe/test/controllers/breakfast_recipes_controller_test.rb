require 'test_helper'

class BreakfastRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @breakfast_recipe = breakfast_recipes(:one)
  end

  test "should get index" do
    get breakfast_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_breakfast_recipe_url
    assert_response :success
  end

  test "should create breakfast_recipe" do
    assert_difference('BreakfastRecipe.count') do
      post breakfast_recipes_url, params: { breakfast_recipe: { host: @breakfast_recipe.host, image: @breakfast_recipe.image, ingredients: @breakfast_recipe.ingredients, title: @breakfast_recipe.title, total_time: @breakfast_recipe.total_time, yields: @breakfast_recipe.yields } }
    end

    assert_redirected_to breakfast_recipe_url(BreakfastRecipe.last)
  end

  test "should show breakfast_recipe" do
    get breakfast_recipe_url(@breakfast_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_breakfast_recipe_url(@breakfast_recipe)
    assert_response :success
  end

  test "should update breakfast_recipe" do
    patch breakfast_recipe_url(@breakfast_recipe), params: { breakfast_recipe: { host: @breakfast_recipe.host, image: @breakfast_recipe.image, ingredients: @breakfast_recipe.ingredients, title: @breakfast_recipe.title, total_time: @breakfast_recipe.total_time, yields: @breakfast_recipe.yields } }
    assert_redirected_to breakfast_recipe_url(@breakfast_recipe)
  end

  test "should destroy breakfast_recipe" do
    assert_difference('BreakfastRecipe.count', -1) do
      delete breakfast_recipe_url(@breakfast_recipe)
    end

    assert_redirected_to breakfast_recipes_url
  end
end
