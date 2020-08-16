class IngredientsController < ApplicationController
  def edit
    @ingredient = Ingredient.find(params[:id])
    @recipe = @ingredient.recipe
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @recipe = @ingredient.recipe

    if @ingredient.update(ingredient_params)
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy

    redirect_to @ingredient.recipe
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:component)
  end
end
