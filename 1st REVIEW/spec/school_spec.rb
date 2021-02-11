require "school"
describe School do
  before(:each) do
    @school = School.new
  end
  it "should return a string" do
    expect(@school.green).to eq 0
  end
  it "should return a string" do
    expect(@school.amber).to eq 0
  end
  it "should return a string" do
    expect(@school.red).to eq 0
  end
  describe "get report" do
    it "should return a string" do
      expect(@school.report).to eq ""
    end
  end
  describe "add to report" do
    it "should return a string" do
      @school.add_2_report("Green: 3 Amber: 1 Red: 1")
      expect(@school.report).to eq "Green: 3 Amber: 1 Red: 1"
    end
  end
  describe "count the string" do
    it "should return the count of the greens" do
      @school.add_2_report("Green")
      p @school.report
      expect(@school.count()).to eq "Green: 1"
    end
    it "should return the count of the ambers" do
      @school.add_2_report("Amber")
      expect(@school.count()).to eq "Amber: 1"
    end
    it "should return the count of the reds" do
      @school.add_2_report("Red")
      expect(@school.count()).to eq "Red: 1"
    end
  end
  describe "final" do
    it "should return a string with the colors counted" do
       @school.add_2_report("Red, Green, Amber")
    end
    
  end
  
end
