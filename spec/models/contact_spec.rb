require 'spec_helper'

describe Contact do
  before(:each) do
    @valid_attributes = {
      :first_name => "value for first_name",
      :last_name => "value for last_name",
      :phone => "value for phone",
      :email => 'yo@gmail.com',
      :message => "value for message",
      :addr_street => "value for addr_street",
      :addr_city => "value for addr_city",
      :addr_state => "value for addr_state",
      :addr_postal_code => "value for addr_postal_code"
    }
  end

  it "should create a new instance given valid attributes" do
    Contact.create!(@valid_attributes)
  end
end
