class MonikersController < ApplicationController
  def index
    @monikers = Moniker.find(:all, :conditions => { :rank => 1..10 }, :order => :rank)
  end
  
  def show
    @moniker = Moniker.find(params[:id])
  end
  
  def new
    @moniker = Moniker.new
  end
  
  def create
    @moniker = Moniker.new(params[:moniker])
    if @moniker.save
      flash[:notice] = "Successfully created moniker."
      redirect_to @moniker
    else
      render :action => 'new'
    end
  end
  
  def edit
    @moniker = Moniker.find(params[:id])
  end
  
  def update
    @moniker = Moniker.find(params[:id])
    if @moniker.update_attributes(params[:moniker])
      flash[:notice] = "Successfully updated moniker."
      redirect_to @moniker
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @moniker = Moniker.find(params[:id])
    @moniker.destroy
    flash[:notice] = "Successfully destroyed moniker."
    redirect_to monikers_url
  end
end
