class CreateSphinxPagesSettings < ActiveRecord::Migration
  def self.up
    create_table :sphinx_pages_settings do |t|

      t.column :document_root_path, :string

      t.column :sphinx_path, :string

      t.column :server_port, :integer

      t.column :sphinx_makefile_head, :text

      t.column :build_dir_variable_name, :string

      t.column :sphinx_index_page, :string

      t.column :pages_title, :string

      t.column :repository, :string

      t.column :branch, :string

    end
  end

  def self.down
    drop_table :sphinx_pages_settings
  end
end
