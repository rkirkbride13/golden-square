require 'exercise'


RSpec.describe TimeError do

  it "Returns difference in seconds between server time" do
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")
    ).and_return('{"abbreviation":"GMT","client_ip":"185.171.200.121","datetime":"2022-11-16T17:22:30.513659+00:00","day_of_week":3,"day_of_year":320,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1668619350,"utc_datetime":"2022-11-16T17:22:30.513659+00:00","utc_offset":"+00:00","week_number":46}')
    time_error = TimeError.new(fake_requester)
    time = Time.new(2022,11,16,17,22,30)
    expect(time_error.error(time)).to eq 0.513659
  end
end