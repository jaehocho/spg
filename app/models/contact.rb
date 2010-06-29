class Contact < ActiveRecord::Base
  validates_presence_of :first_name, :last_name
  validate :valid_email?
  
  def valid_email?
    addr = TMail::Address.parse(self.email)
    if addr.domain.empty?
      raise StandardError('domain is empty')
    end

    # get the sanitized email address
    self.email = addr.address

  rescue
    errors.add(:email, "is invalid.")
  end
end
