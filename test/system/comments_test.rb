require "application_system_test_case"

class CommentsTest < ApplicationSystemTestCase
  setup do
    @comment = comments(:one)
  end

  test "visiting the index" do
    visit comments_url
    assert_selector "h1", text: "Comments"
  end

  test "creating a Comment" do
    visit comments_url
    click_on "إضافة تعليق"

    fill_in "Body", with: @comment.body
    fill_in "User", with: @comment.user
    click_on "إضافة التعليق"

    assert_text "تم إضافة التعليق بنجاح"
    click_on "Back"
  end

  test "updating a Comment" do
    visit comments_url
    click_on "Edit", match: :first

    fill_in "Body", with: @comment.body
    fill_in "User", with: @comment.user
    click_on "تعديل التعليق"

    assert_text "تم تعديل التعليق بنجاح"
    click_on "Back"
  end

  test "destroying a Comment" do
    visit comments_url
    page.accept_confirm do
      click_on "حذف ", match: :first
    end

    assert_text "تم الحذف بنجاح"
  end
end
