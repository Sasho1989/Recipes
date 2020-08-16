class InstructionsController < ApplicationController
  def edit
    @instruction = Instruction.find(params[:id])
    @recipe = @instruction.recipe
  end

  def update
    @instruction = Instruction.find(params[:id])
    @recipe = @instruction.recipe

    if @instruction.update(instruction_params)
      redirect_to @recipe
    else
      render :edit
    end
  end

  def destroy
    @instruction = Instruction.find(params[:id])
    @instruction.destroy

    redirect_to @instruction.recipe
  end

  private

  def instruction_params
    params.require(:instruction).permit(:phase)
  end
end
