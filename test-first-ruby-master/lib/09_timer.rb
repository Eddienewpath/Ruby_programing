class Timer
  attr_reader :seconds

  def initialize
    @seconds = 0
  end

  def seconds=(sec)
    @seconds = sec
  end

  def time_string
		s = padded(@seconds % 60)
		m = padded(@seconds / 60 % 60)
		h = padded(@seconds / 60 / 60)
		"#{h}:#{m}:#{s}"
	end
private 
	def padded(time)
		time < 10 ? '0'+time.to_s : time.to_s
	end
end
