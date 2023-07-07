require 'test_helper'

class KendaraansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kendaraan = kendaraans(:one)
  end

  test "should get index" do
    get kendaraans_url
    assert_response :success
  end

  test "should get new" do
    get new_kendaraan_url
    assert_response :success
  end

  test "should create kendaraan" do
    assert_difference('Kendaraan.count') do
      post kendaraans_url, params: { kendaraan: { employee_id: @kendaraan.employee_id, merk_kendaraan: @kendaraan.merk_kendaraan, tipe_kendaraan: @kendaraan.tipe_kendaraan } }
    end

    assert_redirected_to kendaraan_url(Kendaraan.last)
  end

  test "should show kendaraan" do
    get kendaraan_url(@kendaraan)
    assert_response :success
  end

  test "should get edit" do
    get edit_kendaraan_url(@kendaraan)
    assert_response :success
  end

  test "should update kendaraan" do
    patch kendaraan_url(@kendaraan), params: { kendaraan: { employee_id: @kendaraan.employee_id, merk_kendaraan: @kendaraan.merk_kendaraan, tipe_kendaraan: @kendaraan.tipe_kendaraan } }
    assert_redirected_to kendaraan_url(@kendaraan)
  end

  test "should destroy kendaraan" do
    assert_difference('Kendaraan.count', -1) do
      delete kendaraan_url(@kendaraan)
    end

    assert_redirected_to kendaraans_url
  end
end
