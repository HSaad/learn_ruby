class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
  	minutes = @seconds / 60
  	hours = 0
  	if (minutes > 60)
  		hours = minutes / 60
  		minutes = minutes - 60
  	end
  	@seconds = @seconds % 60
  	sprintf('%2.2d:%2.2d:%2.2d', hours, minutes, @seconds)
  end
end
