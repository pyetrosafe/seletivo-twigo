module Globals
  module Brl

    include ActiveSupport::NumberHelper

    extend self

    def float_to_brl(value = 0)
      number_to_currency(value, unit: "R$", separator: ",", delimiter: ".", precision: 2, format: "%u %n", negative_format: "%u -%n")
    end

    def brl_to_float(value = '')
      (value.kind_of?(String)) ? value.to_s.gsub(/[R$.]/, '').gsub(/[,]/, '.').to_f : value
    end
  end
end
