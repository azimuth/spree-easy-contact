class AddTelephoneToContactForm < ActiveRecord::Migration
  def self.up
    add_column :contacts, :telephone, :string
  end

  def self.down
    drop_column :contacts, :telephone
  end
end
