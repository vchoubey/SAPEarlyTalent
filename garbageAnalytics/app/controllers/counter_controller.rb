class CounterController < ApplicationController
  
  @counter = ""

  def show
  	@counter, @time = get_data_values
  	# evaluate_data_values
  end

  def edit
  end

  def tips
  end

  def evaluate_data_values
  	@count, @timestamp = get_data_values
  	if @timestamp != @time
  		@counter += @count
  		@time = @timestamp
  	end

  	return @counter, @time
  end

  def get_data_values
  		# file = File.join(Rails.root, 'mock', 'mock.txt')
		# File.read(file) do |f|
		# 	data = f.split(/\t/)
		# 	@count, @timestamp = data.map{|d| d.split(",")[1] }.flatten
		# end
		# return @count, @timestamp
	file = File.join(Rails.root, 'mock', 'mock.txt')
	array = File.read(file).split(",").map(&:strip)
	return array
  end
end
