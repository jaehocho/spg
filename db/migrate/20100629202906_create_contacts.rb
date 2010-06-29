class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :addr_street
      t.string :addr_city
      t.string :addr_state
      t.string :addr_postal_code
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
