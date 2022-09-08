# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.inregistry.net/in/property_status_missing.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.inregistry.net.rb'

describe Whois::Parsers::WhoisInregistryNet, "property_status_missing.expected" do

  subject do
    file = fixture("responses", "whois.inregistry.net/in/property_status_missing.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#status" do
    it do
      expect(subject.status).to eq([])
    end
  end
end
