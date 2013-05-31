class CreateTimeentries < ActiveRecord::Migration
  def change
    create_table :timeentries do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :user_id

      t.timestamps
    end
  end
end
