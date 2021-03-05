#!/usr/bin/env ruby

require 'csv'
require_relative './book'
require_relative './magazine'

module Echocat
  class ImportCsv
    def self.import_data
      import_books
      import_magazines
    end

    def self.import_books
      books_csv = File.join(File.expand_path('../data', __dir__), 'books.csv')
      CSV.foreach(books_csv, col_sep: ';', headers: true) do |row|
        data = {
          title: row['title'],
          description: row['description'],
          authors: row['authors'],
          isbn: row['isbn'],
          type: 'Book'
        }
        Echocat::Book.new(data)
      end
    end

    def self.import_magazines
      magazines_csv = File.join(File.expand_path('../data', __dir__), 'magazines.csv')
      CSV.foreach(magazines_csv, col_sep: ';', headers: true) do |row|
        data = {
          title: row['title'],
          description: row['description'],
          authors: row['authors'],
          isbn: row['isbn'],
          published_at: row['publishedAt'],
          type: 'Magazine'
        }
        Echocat::Magazine.new(data)
      end
    end
  end
end
