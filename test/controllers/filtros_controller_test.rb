require 'test_helper'

class FiltrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filtro = filtros(:one)
  end

  test "should get index" do
    get filtros_url
    assert_response :success
  end

  test "should get new" do
    get new_filtro_url
    assert_response :success
  end

  test "should create filtro" do
    assert_difference('Filtro.count') do
      post filtros_url, params: { filtro: { empresa_filtro: @filtro.empresa_filtro, fechafin_filtro: @filtro.fechafin_filtro, fechainicio_filtro: @filtro.fechainicio_filtro } }
    end

    assert_redirected_to filtro_url(Filtro.last)
  end

  test "should show filtro" do
    get filtro_url(@filtro)
    assert_response :success
  end

  test "should get edit" do
    get edit_filtro_url(@filtro)
    assert_response :success
  end

  test "should update filtro" do
    patch filtro_url(@filtro), params: { filtro: { empresa_filtro: @filtro.empresa_filtro, fechafin_filtro: @filtro.fechafin_filtro, fechainicio_filtro: @filtro.fechainicio_filtro } }
    assert_redirected_to filtro_url(@filtro)
  end

  test "should destroy filtro" do
    assert_difference('Filtro.count', -1) do
      delete filtro_url(@filtro)
    end

    assert_redirected_to filtros_url
  end
end
