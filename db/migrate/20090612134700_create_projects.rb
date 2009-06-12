class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.integer :last_build_id
      t.integer :last_failure_id
      t.integer :last_successful_id
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
