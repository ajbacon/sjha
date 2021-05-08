# require 'nokogiri'


# class Parser < Nokogiri::XML::SAX::Document
#   def start_element(name, attributes = [])
#     # @records << attributes[0][1] if name == "Provider"
#     # @last_seen_tag = name
#     p name
#   end

#   def characters(string)
#     # if ['Last_Name', 'First_Name', 'Mdl_Name', 'Gndr'].include? @last_seen_tag
#     #   @records << string
#     # end
#     # p string
#   end

#   def end_element name
#     # @last_seen_tag = nil
#     p name
#   end
# end

# Nokogiri::XML::SAX::Parser.new(Parser.new).parse(File.open('/Users/andrew.bacon/Downloads/FULLDownload_Part1_clipped_Of_115_2021-03-01.xml'))

require 'saxerator'

filepath = '/Users/andrew.bacon/Downloads/FULLDownload_Part1_clipped_Of_115_2021-03-01.xml'
parser = Saxerator.parser(File.new(filepath))

parser.for_tag(:device).each do |device|
  pp device.attributes
  # signId = sign[:ClinicalSign][:id]
  # name = sign[:ClinicalSign][:name]
  # Symtom(:name => name, :id => signId).create!
end
