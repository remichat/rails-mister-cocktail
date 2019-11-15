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
    @cocktail = Cocktail.new(cocktail_params)
    if params[:cocktail][:passphrase] == 'hello' && @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :stars, :photo)
  end
end
