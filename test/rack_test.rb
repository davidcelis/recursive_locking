require 'test_helper'
require 'rack/test'

class RackTest < ActiveSupport::TestCase
  include Rack::Test::Methods

  def app
    Dummy::Application
  end

  setup do
    @io = StringIO.new
    Rails.logger = Logger.new(@io)
  end

  %w[1 2 3 4 5].each do |x|
    test x do
      get '/'

      assert_includes @io.string, 'Started GET "/"'
    end
  end
end

