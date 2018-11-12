class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :apiID
      t.string :title
      t.string :location
      t.string :jobType
      t.string :description
      t.string :how_to_apply
      t.string :company
      t.string :company_url
      t.string :company_logo

      t.timestamps
    end
  end
end
