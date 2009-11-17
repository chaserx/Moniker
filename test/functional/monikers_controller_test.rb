require 'test_helper'

class MonikersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Moniker.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Moniker.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Moniker.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to moniker_url(assigns(:moniker))
  end
  
  def test_edit
    get :edit, :id => Moniker.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Moniker.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Moniker.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Moniker.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Moniker.first
    assert_redirected_to moniker_url(assigns(:moniker))
  end
  
  def test_destroy
    moniker = Moniker.first
    delete :destroy, :id => moniker
    assert_redirected_to monikers_url
    assert !Moniker.exists?(moniker.id)
  end
end
