class TipsController < ApplicationController
  require 'tip_calculator.rb'

  def new
  end

  def calculate
    tip = ::Tip_calculator.new
    tax = ::Tip_calculator.new


    tip_percent = tip.to_percent((params[:tip]))
    tax_percent = tax.to_percent((params[:tax]))
    meal_price = (Float(params[:price])) 

    @tip = tip.value(meal_price, tip_percent)

    @tax = tax.value(meal_price, tax_percent)
    @total = @tip + @tax + (params[:price].to_i)
  end

end