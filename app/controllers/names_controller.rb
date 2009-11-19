class NamesController < ApplicationController
  def index
    #@names = Name.all
    if params[:namelist]
      inputnames = params[:namelist]
      @names = inputnames.to_s.split.each{|e|e.capitalize!}
    else
      @names = "No Results"
    end
  end
end
