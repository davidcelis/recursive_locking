require 'test_helper'

class RecursiveLockingTest < ActiveSupport::TestCase
  setup do
    @io = StringIO.new
    Rails.logger = Logger.new(@io)
  end

  %w[1 2 3 4 5].each do |x|
    test x do
      Dummy::Application.call Rack::MockRequest.env_for('/')

      assert_includes @io.string, 'Started GET "/"'
    end
  end
end

