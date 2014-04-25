require 'net/http'

module MyPush::Network

    private

    # 
    # 
    def _send_request
      response = Unirest.get "https://api.pushbullet.com/api/devices", 
                        auth:{:user => "#{@token}", :password => "#{@token}"}
      response.body
    end



    # 
    # 
    def _send_post params
      response = Unirest.post "https://api.pushbullet.com/api/pushes", 
                        auth:{:user => "#{@token}", :password => "#{@token}"},
                        parameters:params
      response.body
    end



end