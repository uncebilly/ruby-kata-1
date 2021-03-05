#!/usr/bin/env ruby
require_relative './output_control'

module Echocat
  class Magazine
    class << self
      attr_accessor :all
      def data
        @data ||= []
      end
    end

    def initialize(data)
      @title = data[:title]
      @isbn = data[:isbn]
      @authors= data[:authors]
      @published_at = data[:published_at]
      @type = data[:type]
      OutputControl.data << data
    end
  end
end
