require "contacts"
require "rspec"
require "pry"

describe(Contact) do
  before do
    Contact.clear
  end

  describe('#initialize') do
    it('will create a new instance of Contact')do
      contact = Contact.new('Franz')
      expect(contact.name()).to(eq('Franz'))
    end
  end
  describe('#initialize') do
    it('will create new id for contact in initialize') do
      contact = Contact.new('Greg')
      expect(contact.id()).to(eq(1))
    end
  end
  describe('#intialize') do
    it('will create an empty array for addresses') do
      contact = Contact.new('Sean')
      expect(contact.addresses()).to(eq([]))
    end
  end
  describe('#intialize') do
    it('will create an empty array for emails') do
      contact = Contact.new('Sean')
      expect(contact.emails()).to(eq([]))
    end
  end
  describe('#intialize') do
    it('will create an empty array for phone numbers') do
      contact = Contact.new('Sean')
      expect(contact.phone_numbers()).to(eq([]))
    end
  end
  describe('#save_contact') do
    it('will save a contact to the contacts array') do
      contact = Contact.new('Greg')
      contact.save()
      contact2 = Contact.new('Sean')
      contact2.save()
      expect(Contact.all()).to(eq([contact, contact2]))
    end
  end
  describe('#add_address') do
    it('will add an address to the array') do
      contact = Contact.new('Greg')
      contact.add_address('1234 Pleasant Ave')
      expect(contact.addresses()).to(eq(['1234 Pleasant Ave']))
    end
  end
  describe('#add_email') do
    it('will add an email to the array') do
      contact = Contact.new('Greg')
      contact.add_email('greg@greg.com')
      expect(contact.emails()).to(eq(['greg@greg.com']))
    end
  end
  describe('#add_phone_number') do
    it('will add an phone number to the array') do
      contact = Contact.new('Greg')
      contact.add_phone_number('555-5050')
      expect(contact.phone_numbers()).to(eq(['555-5050']))
    end
  end
  describe('.find') do
    it('will find and return a contact instance by its id') do
      contact = Contact.new('Greg')
      contact.save
      expect(Contact.find(1).name).to(eq(contact.name))
    end
  end
end
