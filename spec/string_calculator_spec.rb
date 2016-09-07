require "string_calculator"

describe StringCalculator do
  describe "#add" do
    it "returns zero if passed an empty string" do
      expect(subject.add("")).to eq(0)
    end

    it "returns 1 if passed 1" do
      expect(subject.add("1")).to eq(1)
    end
  end
end
