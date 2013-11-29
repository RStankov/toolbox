module RandomStringGenerator
  extend self

  class LimitReachedError < RuntimeError
  end

  def call(length = 16, limit = 1000, &block)
    loop do
      string = generate length
      return string if !block || block.call(string)
      raise LimitReachedError.new if (limit -= 1) < 1
    end
  end

  private

  def generate(length)
    if length.even?
      SecureRandom.hex(length / 2)
    else
      SecureRandom.hex((length + 1) / 2).chop
    end
  end
end

