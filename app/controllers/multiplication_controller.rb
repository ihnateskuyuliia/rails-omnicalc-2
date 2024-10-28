class MultiplicationController < ApplicationController
  def show_multiplication_form
    render({ :template => "multiplication_templates/multiplication_form" })
  end

  def multiply_these
    @first_num = params.fetch("first_num").to_f
    @second_num = params.fetch("second_num").to_f
  
    @result = @second_num * @first_num
  
    #Result as a Float
    @result_float = @result.to_f

    render({ :template => "multiplication_templates/multiply_result" })
  end
end
