class InitialMigration < ActiveRecord::Migration[5.2]
  def change
    execute <<-SQL
      CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
    SQL
  end
end
