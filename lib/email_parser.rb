# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    self.emails = emails
  end

  def parse
    list = self.emails.split(/[, ]+/)
    result = []
    list.each { |email| result << email if !result.include?(email) }
    result
  end
end
