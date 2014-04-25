require 'open-uri'

module MyPush::Push
  include MyPush::Network

  PUSH_TYPE_NOTE = "note"
  PUSH_TYPE_LINK = "link"
  PUSH_TYPE_ADDRESS = "address"
  PUSH_TYPE_LIST = "list"


  # 
  # List of devices
  # 
  # Params: :type => "note", 
  #         :title => "Title", 
  #         :body => "Message", 
  #         :device_iden => "ujzCvGXFPuSdjzWIEVDzOK"
  # 
  def push params = {}
    @pushed = _send_post(params)
    @pushed
  end

end