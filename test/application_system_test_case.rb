require "test_helper"
require "socket"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400], options: {url: "http://selenium:4444/wd/hub"}

  def setup
    host! "http://#{IPSocket.getaddress(Socket.gethostname)}"
    super
  end
end
