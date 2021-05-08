class ParseDelimitedFile
  def self.parse(file, delimiter)
    new(file, delimiter).parse
  end

  attr_reader :file, :delimiter

  def initialize(file, delimiter)
    @file = file
    @delimiter = delimiter
  end

  def parse
    new_file = File.new(file)
    new_file.each do |line|
      split_line = line.split(delimiter)
      create_record(split_line) if split_line[2] =~ /\b(?:hip|knee)\b/i
    end
  end

  def create_record(split_line)
    ProductCode.create(di: split_line[0],
                       code: split_line[1],
                       code_name: split_line[2])
  end
end
