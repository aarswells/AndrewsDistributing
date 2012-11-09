class EventOther < ActiveRecord::Migration
  def self.up
    add_column :donation_requests, :event_other, :string
  end

  def self.down
    remove_column :donation_requests, :event_other
  end
end
