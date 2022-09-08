# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/coza-whois.registry.net.za/co.za/response_throttled.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/coza-whois.registry.net.za.rb'

describe Whois::Parsers::CozaWhoisRegistryNetZa, "response_throttled.expected" do

  subject do
    file = fixture("responses", "coza-whois.registry.net.za/co.za/response_throttled.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#response_throttled?" do
    it do
      expect(subject.response_throttled?).to eq(true)
    end
  end
end
