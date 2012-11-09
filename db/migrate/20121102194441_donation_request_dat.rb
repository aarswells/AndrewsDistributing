class DonationRequestDat < ActiveRecord::Migration
  def self.up
    add_column :donation_requests, :event_date, :datetime
  end

  def self.down
    remove_column :donation_requests, :event_date
  end
end
