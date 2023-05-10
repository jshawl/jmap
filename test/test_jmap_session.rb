require "minitest/autorun"
require "jmap"

class JmapSessionTest < Minitest::Test
  def setup
    stub_request(:get, "https://api.fastmail.com/jmap/session").
      to_return(status: 200, body: File.read("test/fixtures/session-get.json"))
    @session = JMAP::Client::Session.new(url: "https://api.fastmail.com/jmap/session")
  end
  def test_session_init
    assert_equal(@session.url, "https://api.fastmail.com/jmap/session")
  end

  def test_session_capabilities
    assert(@session.capabilities.key? "urn:ietf:params:jmap:core")
  end
end
