require 'twilio-ruby'

class TextConfirmation
  def initialize(requester)
    @my_mobile = ENV['MY_MOBILE']
    my_auth_token = ENV['TWILIO_TOKEN']
    account_sid = "ACb008b1d4a2bc236d7b06178ccc9a2042" # Your Test Account SID from www.twilio.com/console/settings
    auth_token = "#{my_auth_token}"   # Your Test Auth Token from www.twilio.com/console/settings
    @requester = requester
  end

  def send_text
    time = Time.now + 3600
    @requester.messages.create(
    from: "+16614855243",
    to: "+#{@my_mobile}",
    body: "Thank you! Your order was placed and will be delivered before 1230"
    )
  end
end