require 'test_helper'

class EmploykendaraansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employkendaraan = employkendaraans(:one)
  end

  test "should get index" do
    get employkendaraans_url
    assert_response :success
  end

  test "should get new" do
    get new_employkendaraan_url
    assert_response :success
  end

  test "should create employkendaraan" do
    assert_difference('Employkendaraan.count') do
      post employkendaraans_url, params: { employkendaraan: {  } }
    end

    assert_redirected_to employkendaraan_url(Employkendaraan.last)
  end

  test "should show employkendaraan" do
    get employkendaraan_url(@employkendaraan)
    assert_response :success
  end

  test "should get edit" do
    get edit_employkendaraan_url(@employkendaraan)
    assert_response :success
  end

  test "should update employkendaraan" do
    patch employkendaraan_url(@employkendaraan), params: { employkendaraan: {  } }
    assert_redirected_to employkendaraan_url(@employkendaraan)
  end

  test "should destroy employkendaraan" do
    assert_difference('Employkendaraan.count', -1) do
      delete employkendaraan_url(@employkendaraan)
    end

    assert_redirected_to employkendaraans_url
  end
end
