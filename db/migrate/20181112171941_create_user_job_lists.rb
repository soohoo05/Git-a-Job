class CreateUserJobLists < ActiveRecord::Migration[5.2]
  def change
    create_table :user_job_lists do |t|
      t.references :user
      t.references :job
      t.timestamps
    end
  end
end
