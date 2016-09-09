require "string_calculator"

describe StringCalculator do
  describe "#add" do
    it "returns zero if passed an empty string" do
      expect(subject.add("")).to eq(0)
    end

    it "returns 1 if passed 1" do
      expect(subject.add("1")).to eq(1)
    end

    it "returns 3 when passed 1,2" do
      expect(subject.add("1,2")).to eq(3)
    end

    it "returns 15 when passed 1,2,3,4,5" do
      expect(subject.add("1,2,3,4,5")).to eq(15)
    end
  end
end
