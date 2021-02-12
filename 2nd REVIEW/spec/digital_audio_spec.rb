require "digital_audio"
RSpec.describe DigitalAudio do
  let(:da) { described_class.new() }
  describe "upper_lim" do
    let(:da) { described_class.new(1500) }
    it "returns the upper limit" do
      expect(da.upper_limit).to eq 1500
    end
  end
  describe "secuence" do
    it "retuns a value of 60 " do
      expect(da.secArray).to eq []
      da.secuence(60)
      expect(da.secArray).to eq [60]
    end
    it "returns 40 if under default " do
      expect(da.secArray).to eq []
      da.secuence(10)
      expect(da.secArray).to eq [40]
    end
  end
end
