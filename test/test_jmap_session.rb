require "minitest/autorun"
require "jmap"

class JmapSessionTest < Minitest::Test
  def test_session_init
    assert_equal("hi", JMAP::Client::Session.hi)
  end
end
