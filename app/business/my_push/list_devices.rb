module MyPush::ListDevices
  include MyPush::Network

  # 
  # List of devices
  # 
  def devices
    @devices = _send_request
    @devices
  end
  
end