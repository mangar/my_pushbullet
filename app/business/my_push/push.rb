require 'open-uri'

module MyPush::Push
  include MyPush::Network

  DEVICES_URL = "/pushes"

  PUSH_TYPE_NOTE = "note"
  PUSH_TYPE_LINK = "link"
  PUSH_TYPE_ADDRESS = "address"
  PUSH_TYPE_LIST = "list"

  # PUSH_TYPE_FILE = "file"


  # 
  # List of devices
  # 
  # Params: :type => "note", :title => "Title", :body => "Message", :iden => "ujzCvGXFPuSdjzWIEVDzOK"
  # 
  # 
  def push params = {}
    url = URI::encode("#{MyPush::BASE_URL}#{DEVICES_URL}?device_iden=#{params[:iden]}&type=#{params[:type]}&title=#{params[:title]}&body=#{params[:body]}")
    puts "URL: #{url}" if Rails.env == "development"
    @pushed = _send_request(url, "POST")
    @pushed
  end


end