require 'test_helper'

class NoLockingTest < ActionDispatch::IntegrationTest
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

