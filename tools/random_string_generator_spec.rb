require 'spec_helper'

describe RandomStringGenerator do
  describe "#call" do
    it "generates a string with length of 16 by default" do
      expect(RandomStringGenerator.call.size).to eq 16
    end

    it "can generate a string with requested length" do
      expect(RandomStringGenerator.call(32).size).to eq 32
      expect(RandomStringGenerator.call(23).size).to eq 23
    end

    it "generates alphanumeric strings" do
      expect(RandomStringGenerator.call(128)).to match /^[a-zA-Z0-9]+$/
    end

    it "accepts a block for checking if the string is acceptable" do
      SecureRandom.stub hex: 'first'

      result = RandomStringGenerator.call do |value|
        SecureRandom.stub hex: 'second'
        value != 'first'
      end

      expect(result).to eq 'second'
    end

    it "has limit on number of value tries" do
      expect { RandomStringGenerator.call(16, 2) { false } }.to raise_error RandomStringGenerator::LimitReachedError
    end
  end
end

