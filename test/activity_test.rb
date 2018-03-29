require "test_helper"

class ActivityTest < Minitest::Spec
  module MyActivity
    extend Trailblazer::Activity::Path()

    def self.hello(ctx, **)
      puts ctx.inspect
      true
    end

    task method(:hello)
  end

  it do
    signal, (ctx, _) = MyActivity.([{}])
    pp signal, ctx
  end
end
