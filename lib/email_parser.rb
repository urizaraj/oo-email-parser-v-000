# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  @emails = []

  def initialize(email_string)
    email_ar = email_string.split(/[, ]+/)

    puts email_ar

    email_ar.each { |email| @emails << email }
  end

  def parse
    result = []
    @emails.each do |email|
      result << email if !@emails.include?(email)
    end
    result
  end
end
