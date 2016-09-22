require "string_calculator"


describe StringCalculator do

  subject(:calculator) { described_class.new }

  describe "#add" do
    context "when default delimiter is used" do
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

      it "does not allow negative numbers" do
        expect{ subject.add("-1,1")}.to raise_error('negatives not allowed')
      end

      it "ignores numbers bigger than 1000" do
        expect(subject.add("1000,2")).to eq(2)
      end
    end

    context "when non-default delimiter is used" do
      it 'returns 6 when passed 1\n2,3' do
        expect(subject.add("1\n2,3")).to eq(6)
      end

      it 'returns 3 when passed //;\n1;2' do
        expect(subject.add("//[;]\n1;2")).to eq(3)
      end

      it 'retuns 3 when delimiter of any length is used' do
        expect(subject.add("//[****]\n1****2")).to eq(3)
      end

      xit 'returns 3 when multiple delimiters are used' do
        expect(subject.add("//[*][%]\n1*2%3")).to eq(3)
      end
    end
  end
end
