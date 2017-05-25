require 'test_helper'

class BuddySheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buddy_sheet = buddy_sheets(:one)
  end

  test "should get index" do
    get buddy_sheets_url
    assert_response :success
  end

  test "should get new" do
    get new_buddy_sheet_url
    assert_response :success
  end

  test "should create buddy_sheet" do
    assert_difference('BuddySheet.count') do
      post buddy_sheets_url, params: { buddy_sheet: { period: @buddy_sheet.period, start_at: @buddy_sheet.start_at } }
    end

    assert_redirected_to buddy_sheet_url(BuddySheet.last)
  end

  test "should show buddy_sheet" do
    get buddy_sheet_url(@buddy_sheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_buddy_sheet_url(@buddy_sheet)
    assert_response :success
  end

  test "should update buddy_sheet" do
    patch buddy_sheet_url(@buddy_sheet), params: { buddy_sheet: { period: @buddy_sheet.period, start_at: @buddy_sheet.start_at } }
    assert_redirected_to buddy_sheet_url(@buddy_sheet)
  end

  test "should destroy buddy_sheet" do
    assert_difference('BuddySheet.count', -1) do
      delete buddy_sheet_url(@buddy_sheet)
    end

    assert_redirected_to buddy_sheets_url
  end
end
