class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new recipe_params
    if @recipe.save
      redirect_to @recipe
    else
      flash[:error] = 'Todos campos são obrigatórios'
      render :new
    end
  end

  def show
    @recipe = Recipe.find params[:id]
  end

  def index
    @recipe = Recipe.all
  end

  private

  def recipe_params
    params.require(:recipe).permit(:recipe_name, :kitchen, :kind_food,
                                   :how_many_people_serve, :preparation_time,
                                   :difficulty_level, :ingredients,
                                   :step_by_step)
  end
end
