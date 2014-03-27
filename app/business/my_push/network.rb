require 'net/http'

module MyPush::Network

    private

    # 
    # 
    def _send_request url, get_post="GET"
      
      uri = URI.parse(url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      if get_post == "POST"
        request = Net::HTTP::Post.new(uri.request_uri)
      else
        request = Net::HTTP::Get.new(uri.request_uri)
      end
      
      request.basic_auth("#{@token}", "#{@token}")
      # request.body = @body

      response = http.request(request)

      if Rails.env == "development"
        puts "* " * 60
        puts "Request: #{@url}"
        puts "Body (request): "
        puts "#{request.body}"
        puts "Body (response):"
        puts "#{response.body}"
        puts "* " * 60
      end

      JSON.parse(response.body)
    end

end