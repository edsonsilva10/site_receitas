class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create recipe_params
    redirect_to @recipe
  end

  def show
    @recipe = Recipe.find params[:id]
  end

  private

  def recipe_params
    params.require(:recipe).permit(:recipe_name, :kitchen, :kind_food,
                                     :how_many_people_serve, :preparation_time,
                                     :difficulty_level, :ingredients,
                                     :step_by_step)
  end
end
