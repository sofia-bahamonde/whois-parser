# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.domain-registry.nl/nl/response_unavailable.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.domain-registry.nl.rb'

describe Whois::Parsers::WhoisDomainRegistryNl, "response_unavailable.expected" do

  subject do
    file = fixture("responses", "whois.domain-registry.nl/nl/response_unavailable.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#response_unavailable?" do
    it do
      expect(subject.response_unavailable?).to eq(true)
    end
  end
end
