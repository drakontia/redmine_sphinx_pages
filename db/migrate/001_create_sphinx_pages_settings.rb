class CreateSphinxPagesSettings < ActiveRecord::Migration
  def self.up
    create_table :sphinx_pages_settings do |t|

      t.column :project_id, :integer

      t.column :index_file_name, :string

      t.column :pages_title, :string

      t.column :repository, :string

      t.column :branch, :string

    end
  end

  def self.down
    drop_table :sphinx_pages_settings
  end
end
