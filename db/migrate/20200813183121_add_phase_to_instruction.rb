class AddPhaseToInstruction < ActiveRecord::Migration[6.0]
  def change
    add_column :instructions, :phase, :text
  end
end
