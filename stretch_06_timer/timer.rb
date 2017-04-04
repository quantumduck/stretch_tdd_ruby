class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    secs = @seconds
    result = ""
    hours = secs / 3600
    result += pad(hours)
    result += ':'
    secs -= 3600 * hours
    minutes = secs / 60
    result += pad(minutes)
    result += ':'
    secs -= 60 * minutes
    result += pad(secs)
  end

  private

  def pad(num)
    if (num <= 9)
      result = '0' + num.to_s
    else
      result = num.to_s
    end
  end
end
