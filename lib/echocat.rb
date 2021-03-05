# frozen_string_literal: true

require_relative './importCSV'
require_relative './output_control'

module Echocat
  def self.run
    Echocat::ImportCsv.import_data
    Echocat::OutputControl.print_all
    Echocat::OutputControl.find_by_isbn('5454-5587-3210')
    Echocat::OutputControl.find_by_author('null-walter@echocat.org')
    Echocat::OutputControl.sort_by_title
  end
end
