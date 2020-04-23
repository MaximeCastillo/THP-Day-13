require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'scrapper.rb'
require 'save_as_JSON.rb'
require 'save_as_csv.rb'
require 'save_as_spreadsheet.rb'

data = Scrapper.new
SaveAsJSON.new(data.email_address_book)
SaveAsCSV.new(data.email_address_book)
SaveAsSpreadsheet.new(data.email_address_book)
