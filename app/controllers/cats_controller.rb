class CatsController < ApplicationController
  # collection action to load all cats by name
  def index
    @cats = Cat.order(:name).page(params[:page]).per(2)
  end
  #associated view is now automatically loaded 
  def show
    @cat = Cat.find(params[:id])
  end
  def adopt
    @adopt_cat = Cat.find(params[:id])
  end
  def search_results
    wildcard_keywords = '%' + params[:search_keywords] + '%'
    @cats = Cat.where("name LIKE ?", wildcard_keywords)
  end
  def aboutus
    @aboutpage = AboutPage.first
    
  end
  def contact
    @contactpage = ContactPage.first
  end
end
