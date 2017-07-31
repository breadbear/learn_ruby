class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end


  def pad number
    if number > 9
      return number.to_s
    else
      return "0" + number.to_s
    end
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = @seconds % 60

    "#{pad(hours)}:#{pad(minutes)}:#{pad(seconds)}"
  end
end



=begin
  def time_string
    hours = @seconds / 3600
    minutes = (@seconds % 3600) / 60
    seconds = @seconds % 60
    if @seconds.to_s.length == 1
      "00:00:0#{@seconds}"
    elsif @seconds.to_f <= 59
      "00:00:#{seconds}"
    else
      "00:00:#{@seconds}"
    end
  end
end
=end
