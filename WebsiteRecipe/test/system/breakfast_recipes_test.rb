require "application_system_test_case"

class BreakfastRecipesTest < ApplicationSystemTestCase
  setup do
    @breakfast_recipe = breakfast_recipes(:one)
  end

  test "visiting the index" do
    visit breakfast_recipes_url
    assert_selector "h1", text: "Breakfast Recipes"
  end

  test "creating a Breakfast recipe" do
    visit breakfast_recipes_url
    click_on "New Breakfast Recipe"

    fill_in "Host", with: @breakfast_recipe.host
    fill_in "Image", with: @breakfast_recipe.image
    fill_in "Ingredients", with: @breakfast_recipe.ingredients
    fill_in "Title", with: @breakfast_recipe.title
    fill_in "Total time", with: @breakfast_recipe.total_time
    fill_in "Yields", with: @breakfast_recipe.yields
    click_on "Create Breakfast recipe"

    assert_text "Breakfast recipe was successfully created"
    click_on "Back"
  end

  test "updating a Breakfast recipe" do
    visit breakfast_recipes_url
    click_on "Edit", match: :first

    fill_in "Host", with: @breakfast_recipe.host
    fill_in "Image", with: @breakfast_recipe.image
    fill_in "Ingredients", with: @breakfast_recipe.ingredients
    fill_in "Title", with: @breakfast_recipe.title
    fill_in "Total time", with: @breakfast_recipe.total_time
    fill_in "Yields", with: @breakfast_recipe.yields
    click_on "Update Breakfast recipe"

    assert_text "Breakfast recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Breakfast recipe" do
    visit breakfast_recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Breakfast recipe was successfully destroyed"
  end
end
