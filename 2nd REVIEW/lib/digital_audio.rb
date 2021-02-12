class DigitalAudio
  DEFAULT = 40
  attr_reader :upper_limit, :secArray

  def initialize(upper_limit = 1000)
    @upper_limit = upper_limit
    @secArray = []
  end

  def secuence(i)
    if i >= DEFAULT  && i <= @upper_limit
      @secArray << i
    else i <= DEFAULT
      @secArray << DEFAULT
    end
  end
end
