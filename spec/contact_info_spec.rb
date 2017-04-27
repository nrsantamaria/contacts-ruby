require "contact_info"
require "rspec"
require "pry"

describe(Address) do

  before do
    Address.clear()
  end

  describe('#initialize') do
    it('will create a new address') do
      address = Address.new('1234 Pleasant Ave, Pleasantville, Pleasanton, 12345')
      expect(address.address).to(eq('1234 Pleasant Ave, Pleasantville, Pleasanton, 12345'))
    end
  end
  # describe('#initialize') do
  #   it('will create a new address with a city') do
  #     address = Address.new('1234 Pleasant Ave', 'Pleasantville', 'Pleasanton', '12345')
  #     expect(address.city()).to(eq('Pleasantville'))
  #   end
  # end
  # describe('#initialize') do
  #   it('will create a new address with a zip code') do
  #     address = Address.new('1234 Pleasant Ave', 'Pleasantville', 'Pleasanton', '12345')
  #     expect(address.zip()).to(eq('12345'))
  #   end
  # end
  # describe('#initialize') do
  #   it('will create a new address with a street') do
  #     address = Address.new('1234 Pleasant Ave', 'Pleasantville', 'Pleasanton', '12345')
  #     expect(address.street()).to(eq('1234 Pleasant Ave'))
  #   end
  # end
  describe('#save_address') do
    it('will create save a new address in an array') do
      address = Address.new('1234 Pleasant Ave, Pleasantville, Pleasanton, 12345')
      address.save_address()
      expect(Address.all()).to(eq([address]))
    end
  end
end


describe(Email) do

  before do
    Email.clear
  end

  describe('#initialize') do
    it('will initialize an instance of an Email with an email address') do
      franz_email = Email.new('franz@epicodus.com')
      expect(franz_email.email).to(eq('franz@epicodus.com'))
    end
  end

  describe('#save_email') do
    it('will save an email instance to the emails array') do
      franz_email = Email.new('franz@epicodus.com')
      franz_email.save_email
      expect(Email.all).to(eq([franz_email]))
    end
  end

end

describe(PhoneNumber) do

  before do
    PhoneNumber.clear
  end

  describe('#initialize') do
    it("will initialize an instance of a PhoneNumber object with a phone number") do
      franz_number = PhoneNumber.new('555-5555')
      expect(franz_number.phone_number).to(eq('555-5555'))
    end
  end

  describe('#save_phone_number') do
    it("will save a phone number to the phone_numbers array") do
      franz_number = PhoneNumber.new('555-5555')
      franz_number.save_phone_number
      nicky_number = PhoneNumber.new('444-4444')
      nicky_number.save_phone_number
      expect(PhoneNumber.all).to(eq([franz_number, nicky_number]))
    end
  end

end

































# end
