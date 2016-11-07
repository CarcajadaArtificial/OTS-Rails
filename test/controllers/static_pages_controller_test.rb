require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get cliente" do
    get static_pages_cliente_url
    assert_response :success
  end

  test "should get camion" do
    get static_pages_camion_url
    assert_response :success
  end

  test "should get recibo" do
    get static_pages_recibo_url
    assert_response :success
  end

  test "should get representante" do
    get static_pages_representante_url
    assert_response :success
  end

  test "should get solicitud" do
    get static_pages_solicitud_url
    assert_response :success
  end


end
