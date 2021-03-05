#!/usr/bin/env ruby

require_relative './output_control'

module Echocat
  class Book
    class << self
      attr_accessor :all
      def data
        @data ||= []
      end
    end

    def initialize(data)
      @title = data[:title]
      @description = data[:description]
      @isbn = data[:isbn]
      @authors= data[:authors]
      @type = data[:type]
      OutputControl.data << data
    end
  end
end
