class AddPulseToZombies < ActiveRecord::Migration[5.1]
  def change
    add_column :zombies, :pulse, :boolean
  end
end
