class DigitalAudio
  DEFAULT = 40
  attr_reader :upper_limit, :secArray

  def initialize(upper_limit = 1000)
    @upper_limit = upper_limit
    @secArray = []
  end

  def secuence(i)
    if i > @upper_limit
      @secArray << 1000
    elsif i <= DEFAULT
      @secArray << DEFAULT
    else
      @secArray << i
    end
  end
end
