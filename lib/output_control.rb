#!/usr/bin/env ruby
require 'json'

module Echocat
  class OutputControl
    class << self
      attr_accessor :all

      def data
        @data ||= []
      end

      def print_all
        puts data
      end

      def find_by_isbn(isbn)
        results = @data.select! { |key| key[:isbn] == isbn}
        puts results
      end

      def find_by_author(author)
        results = @data.select! { |key| key[:authors].include?(author)}
        puts results
      end

      def sort_by_title
        results = @data.sort_by! { |key| key[:title]}
        puts results
      end

    end
  end
end
