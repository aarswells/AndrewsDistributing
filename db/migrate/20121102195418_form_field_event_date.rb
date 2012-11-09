class FormFieldEventDate < ActiveRecord::Migration
  def self.up
    add_column :form_fields, :event_date, :boolean
  end

  def self.down
    remove_column :form_fields, :event_date
  end
end
