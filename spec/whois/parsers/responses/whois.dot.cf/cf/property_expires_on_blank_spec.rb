# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dot.cf/cf/property_expires_on_blank.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.dot.cf.rb'

describe Whois::Parsers::WhoisDotCf, "property_expires_on_blank.expected" do

  subject do
    file = fixture("responses", "whois.dot.cf/cf/property_expires_on_blank.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#expires_on" do
    it do
      expect(subject.expires_on).to eq(nil)
    end
  end
end
