# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.cx/cx/property_updated_on_empty.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.nic.cx.rb'

describe Whois::Parsers::WhoisNicCx, "property_updated_on_empty.expected" do

  subject do
    file = fixture("responses", "whois.nic.cx/cx/property_updated_on_empty.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#updated_on" do
    it do
      expect(subject.updated_on).to eq(nil)
    end
  end
end
