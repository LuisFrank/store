require "application_system_test_case"

class FlowersTest < ApplicationSystemTestCase
  setup do
    @flower = flowers(:one)
  end

  test "visiting the index" do
    visit flowers_url
    assert_selector "h1", text: "Flowers"
  end

  test "creating a Flower" do
    visit flowers_url
    click_on "New Flower"

    fill_in "Brand", with: @flower.brand
    fill_in "Category", with: @flower.category_id
    fill_in "Condition", with: @flower.condition
    fill_in "Description", with: @flower.description
    fill_in "Finish", with: @flower.finish
    fill_in "Model", with: @flower.model
    fill_in "Price", with: @flower.price
    fill_in "Title", with: @flower.title
    click_on "Create Flower"

    assert_text "Flower was successfully created"
    click_on "Back"
  end

  test "updating a Flower" do
    visit flowers_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @flower.brand
    fill_in "Category", with: @flower.category_id
    fill_in "Condition", with: @flower.condition
    fill_in "Description", with: @flower.description
    fill_in "Finish", with: @flower.finish
    fill_in "Model", with: @flower.model
    fill_in "Price", with: @flower.price
    fill_in "Title", with: @flower.title
    click_on "Update Flower"

    assert_text "Flower was successfully updated"
    click_on "Back"
  end

  test "destroying a Flower" do
    visit flowers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flower was successfully destroyed"
  end
end
