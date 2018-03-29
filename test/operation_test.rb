require "test_helper"

class OperationTest < Minitest::Spec
  class Create < Trailblazer::Operation
    step :hello

    def hello(ctx, **)
      puts ctx.inspect
      true
    end
  end

  it do
    result = Create.({ hello: 1 })
    pp result, result.success?
  end
end
