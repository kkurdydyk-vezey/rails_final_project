class CatsController < ApplicationController
  # collection action to load all cats by name
  def index
    @cats = Cat.order(:name)
  end
  #associated view is now automatically loaded 
  def show
    @cat = Cat.find(params[:id])
  end
  def adopt
    @adopt_cat = Cat.find(params[:id])
  end
end
