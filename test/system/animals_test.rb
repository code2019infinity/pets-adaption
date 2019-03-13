require "application_system_test_case"

class AnimalsTest < ApplicationSystemTestCase
  setup do
    @animal = animals(:one)
  end

  test "visiting the index" do
    visit animals_url
    assert_selector "h1", text: "Animals"
  end

  test "creating a Animal" do
    visit animals_url
    click_on "إضافة طلب جديد"

    fill_in "Adapted", with: @animal.adapted
    fill_in "Description", with: @animal.description
    fill_in "Location", with: @animal.location
    fill_in "Type", with: @animal.type
    click_on "إضافة"

    assert_text "Animal was successfully created"
    click_on "Back"
  end

  test "updating a Animal" do
    visit animals_url
    click_on "تعديل", match: :first

    fill_in "Adapted", with: @animal.adapted
    fill_in "Description", with: @animal.description
    fill_in "Location", with: @animal.location
    fill_in "Type", with: @animal.type
    click_on "Update Animal"

    assert_text "تم الإضافه بنجاح"
    click_on "خلف"
  end

  test "destroying a Animal" do
    visit animals_url
    page.accept_confirm do
      click_on "حذف", match: :first
    end

    assert_text "تم الحذف بنجاح"
  end
end
