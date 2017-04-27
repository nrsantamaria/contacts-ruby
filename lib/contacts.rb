class Contact

  attr_accessor :name, :id, :addresses, :emails, :phone_numbers

  @@contacts = []

  def initialize(name)
    self.name = name
    self.id = @@contacts.length.+(1)
    self.addresses = []
    self.emails = []
    self.phone_numbers = []
  end

  def Contact.all
    @@contacts
  end

  def save
    @@contacts.push(self)
  end

  def Contact.clear
    @@contacts = []
  end

  def add_address(address)
    @addresses.push(address)
  end

  def add_email(email)
    @emails.push(email)
  end

  def add_phone_number(number)
    @phone_numbers.push(number)
  end
end
