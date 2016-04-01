require 'test_helper'

class MestresControllerTest < ActionController::TestCase
  setup do
    @mestre = mestres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mestres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mestre" do
    assert_difference('Mestre.count') do
      post :create, mestre: { celular: @mestre.celular, email: @mestre.email, foto: @mestre.foto, matricula: @mestre.matricula, nome: @mestre.nome }
    end

    assert_redirected_to mestre_path(assigns(:mestre))
  end

  test "should show mestre" do
    get :show, id: @mestre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mestre
    assert_response :success
  end

  test "should update mestre" do
    patch :update, id: @mestre, mestre: { celular: @mestre.celular, email: @mestre.email, foto: @mestre.foto, matricula: @mestre.matricula, nome: @mestre.nome }
    assert_redirected_to mestre_path(assigns(:mestre))
  end

  test "should destroy mestre" do
    assert_difference('Mestre.count', -1) do
      delete :destroy, id: @mestre
    end

    assert_redirected_to mestres_path
  end
end
