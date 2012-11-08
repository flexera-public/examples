require 'socket'

class ServeridController < ApplicationController
  def index
    @hostname = Socket.gethostname
    @ip_addr =  IPSocket.getaddress(@hostname)
  end
end
