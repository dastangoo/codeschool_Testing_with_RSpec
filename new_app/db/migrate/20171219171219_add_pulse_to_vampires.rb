class AddPulseToVampires < ActiveRecord::Migration[5.1]
  def change
    add_column :vampires, :pulse, :boolean
  end
end
