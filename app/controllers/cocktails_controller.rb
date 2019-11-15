class CocktailsController < ApplicationController
  def index
    if params[:search].nil?
      @cocktails = Cocktail.all
    else
      @cocktails = Cocktail.where(name: params[:search][:query])
    end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :stars, :photo)
  end
end
