require 'text_confirmation'

RSpec.describe TextConfirmation do

  it "sends a confirmation text to a number" do
    @my_mobile = ENV['MY_MOBILE']
    fake_message = double :fake_message
    fake_requester = double :requester, messages: fake_message
    expect(fake_message).to receive(:create).with(
      from: "+16614855243",
      to: "+#{@my_mobile}",
      body: "Thank you! Your order was placed and will be delivered before 1230"
      ).and_return("Thank you! Your order was placed and will be delivered before 1230")
    text = TextConfirmation.new(fake_requester)
    expect(text.send_text).to eq "Thank you! Your order was placed and will be delivered before 1230"
  end

end

# '{"body": "Thank you! Your order was placed and will be delivered before 1230", "num_segments": "1", "direction": "outbound-api", "from": "+16614855243", "date_updated": "Fri, 18 Nov 2022 10:44:32 +0000", "price": null, "error_message": null, "uri": "/2010-04-01/Accounts/ACb008b1d4a2bc236d7b06178ccc9a2042/Messages/SM7323b83e60ef003dd7035e19c0660d76.json", "account_sid": "ACb008b1d4a2bc236d7b06178ccc9a2042", "num_media": "0", "to": "+447788930837", "date_created": "Fri, 18 Nov 2022 10:44:32 +0000", "status": "queued", "sid": "SM7323b83e60ef003dd7035e19c0660d76", "date_sent": null, "messaging_service_sid": null, "error_code": null, "price_unit": "USD", "api_version": "2010-04-01", "subresource_uris": {"media": "/2010-04-01/Accounts/ACb008b1d4a2bc236d7b06178ccc9a2042/Messages/SM7323b83e60ef003dd7035e19c0660d76/Media.json"}}'