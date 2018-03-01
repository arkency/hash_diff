require "hash_differ/version"
require "hash_differ/comparison"

module HashDiffer
  class NO_VALUE; end

  module_function

  def diff(*args)
    Comparison.new(*args).diff
  end

  def left_diff(*args)
    Comparison.new(*args).left_diff
  end

  def right_diff(*args)
    Comparison.new(*args).right_diff
  end
end
