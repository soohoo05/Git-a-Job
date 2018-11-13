class CreateUserjoblists < ActiveRecord::Migration[5.2]
  def change
    create_table :userjoblists do |t|
      t.references :user
      t.references :job
      t.timestamps
    end
  end
end
