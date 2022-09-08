# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.enom.com/status_registered_with_blank_updated_date.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.enom.com.rb'

describe Whois::Parsers::WhoisEnomCom, "status_registered_with_blank_updated_date.expected" do

  subject do
    file = fixture("responses", "whois.enom.com/status_registered_with_blank_updated_date.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#updated_on" do
    it do
      expect(subject.updated_on).to eq(nil)
    end
  end
end
