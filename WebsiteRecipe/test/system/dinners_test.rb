require "application_system_test_case"

class DinnersTest < ApplicationSystemTestCase
  setup do
    @dinner = dinners(:one)
  end

  test "visiting the index" do
    visit dinners_url
    assert_selector "h1", text: "Dinners"
  end

  test "creating a Dinner" do
    visit dinners_url
    click_on "New Dinner"

    fill_in "Host", with: @dinner.host
    fill_in "Image", with: @dinner.image
    fill_in "Ingredients", with: @dinner.ingredients
    fill_in "Instructions", with: @dinner.instructions
    fill_in "Title", with: @dinner.title
    fill_in "Total time", with: @dinner.total_time
    fill_in "Yields", with: @dinner.yields
    click_on "Create Dinner"

    assert_text "Dinner was successfully created"
    click_on "Back"
  end

  test "updating a Dinner" do
    visit dinners_url
    click_on "Edit", match: :first

    fill_in "Host", with: @dinner.host
    fill_in "Image", with: @dinner.image
    fill_in "Ingredients", with: @dinner.ingredients
    fill_in "Instructions", with: @dinner.instructions
    fill_in "Title", with: @dinner.title
    fill_in "Total time", with: @dinner.total_time
    fill_in "Yields", with: @dinner.yields
    click_on "Update Dinner"

    assert_text "Dinner was successfully updated"
    click_on "Back"
  end

  test "destroying a Dinner" do
    visit dinners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dinner was successfully destroyed"
  end
end
