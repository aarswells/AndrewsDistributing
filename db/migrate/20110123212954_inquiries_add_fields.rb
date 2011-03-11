class InquiriesAddFields < ActiveRecord::Migration
  def self.up
    add_column :inquiries, :last_name, :string
    add_column :inquiries, :title, :string
    add_column :inquiries, :company, :string
    add_column :inquiries, :site, :string
  end

  def self.down
    remove_column :inquiries, :site
    remove_column :inquiries, :title
    remove_column :inquiries, :company
    remove_column :inquiries, :last_name
  end
end
