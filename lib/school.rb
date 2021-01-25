class School
  attr_reader :report, :green, :amber, :red

  def initialize
    @report = ""
    @green = 0
    @amber = 0
    @red = 0
  end

  def add_2_report(str)
    @report = str
  end

  def count
    arr_color = @report.split(", ")
    arr_color.each do |color|
      if color == "Green"
        @green += 1
        return "Green: #{@green}"
      elsif color == "Amber"
        @amber += 1
        return "Amber: #{@amber}"
      else color == "Red"
        @red += 1
        return "Red: #{@red}"
      end
    end
  end
end
