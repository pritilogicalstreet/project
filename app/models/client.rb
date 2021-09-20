class Client < ApplicationRecord
  validates :name, :mobile_no, :company_name, presence: true
  validates :name, format: {with: /[a-zA-Z]/}
  validates :mobile_no, :company_name, uniqueness: true
  validates :mobile_no, length: { maximum: 10}, :numericality => true

  def self.send_sms(mobile)
    @client = Twilio::REST::Client.new('AC7bf32b67ebfc343901eca7d9eecb17d1', '0d363adce62e1066cf65ebfe18e69142')
    
    @client.messages.create(
      from: '+16122940730',
      to: "+91#{mobile}",
      body: 'Good Day!'
    )
  end


end
