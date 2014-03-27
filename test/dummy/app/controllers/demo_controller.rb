class DemoController < ApplicationController

  def index    
  end

  # 
  # 
  def set_token
    session[:token] = params[:token]
    redirect_to list_devices_path
  end

  # 
  # 
  def list_devices
    push = MyPush.new :token => session[:token]
    @devices = push.devices
  end

  # 
  # 
  def push
    push = MyPush.new :token => session[:token]
    push.push :type => MyPush::PUSH_TYPE_NOTE, 
              :title => params[:title], 
              :body => params[:body], 
              :iden => params[:iden]

    flash[:message] = "Message Sent!"

    redirect_to list_devices_path
  end

end