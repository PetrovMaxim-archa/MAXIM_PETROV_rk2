class ProxyController < ApplicationController
    def input
      render 'input'
    end  
    def output
      input_data = params[:arrayInput]
      arr_x = input_data.split(' ').map(&:to_i)  
      negativeCount = arr_x.select {|num| num < 0}
      positiveCount  = arr_x.select {|num| num > 0}
      quotient = negativeCount / positiveCount
      @result = { quotient: quotient }  
      render 'output'
    end  
    def generate_random_array
      array_length = rand(1..20)
      random_array = Array.new(array_length) { rand(100) - 50 }
      render plain: random_array.join(' ')
    end
end