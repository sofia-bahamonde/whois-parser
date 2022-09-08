# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.it/it/response_unavailable.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.nic.it.rb'

describe Whois::Parsers::WhoisNicIt, "response_unavailable.expected" do

  subject do
    file = fixture("responses", "whois.nic.it/it/response_unavailable.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#response_unavailable?" do
    it do
      expect(subject.response_unavailable?).to eq(true)
    end
  end
end
