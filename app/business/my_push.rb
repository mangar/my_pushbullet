class MyPush
  include MyPush::ListDevices
  include MyPush::Push

  BASE_URL = "https://api.pushbullet.com/api"

  # 
  # 
  def initialize(params = {})
    @token = params[:token]
  end

end