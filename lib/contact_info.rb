class Address

  attr_accessor :street, :city, :state, :zip

  @@addresses = []

  def initialize(street, city, state, zip)
    self.street = street
    self.city = city
    self.state = state
    self.zip = zip
  end

  def Address.all
    @@addresses
  end

  def save_address
    @@addresses.push(self)
  end

  def Address.clear
    @@address = []
  end
end

# --------------------END ADDRESS CLASS
# --------------------END ADDRESS CLASS
# --------------------END ADDRESS CLASS

class Email

  attr_accessor :email

  @@emails = []

  def initialize(email)
    self.email = email
  end

  def save_email
    @@emails.push(self)
  end

  def Email.clear
    @@emails = []
  end

  def Email.all
    @@emails
  end

end

# --------------------END EMAIL CLASS
# --------------------END EMAIL CLASS
# --------------------END EMAIL CLASS

class PhoneNumber

  attr_accessor :phone_number

  @@phone_numbers = []

  def initialize(phone_number)
    self.phone_number = phone_number
  end

  def save_phone_number
    @@phone_numbers.push(self)
  end

  def PhoneNumber.clear
    @@phone_numbers = []
  end

  def PhoneNumber.all
    @@phone_numbers
  end

end

# --------------------END PHONENUMBER CLASS
# --------------------END PHONENUMBER CLASS
# --------------------END PHONENUMBER CLASS
