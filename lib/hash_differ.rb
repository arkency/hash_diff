require "hash_differ/version"
require "hash_differ/comparison"

module HashDiffer
  class NO_VALUE; end

  def self.patch!
    Hash.class_eval do
      def diff(right)
        HashDiffer.left_diff(self, right)
      end
    end unless Hash.new.respond_to?(:diff)
  end

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
