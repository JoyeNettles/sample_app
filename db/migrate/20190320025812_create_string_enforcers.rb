class CreateStringEnforcers < ActiveRecord::Migration[5.1]
  def change
    create_table :string_enforcers do |t|

      t.timestamps
    end
  end
end
