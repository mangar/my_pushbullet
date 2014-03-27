module MyPush::ListDevices
  include MyPush::Network

  DEVICES_URL = "/devices"

  # 
  # List of devices
  # 
  def devices
    url = "#{MyPush::BASE_URL}#{DEVICES_URL}"
    @devices = _send_request(url)
    @devices
  end
  
end