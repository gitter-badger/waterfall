module Waterfall
  class Catch < Base

    def initialize(root, &block)
      @root, @block = root, block
    end

    def call
      if @root.stop_waterfall?
        @block.call @root.rejection_reason
      else
        @root.wf_result
      end
    end
  end
end