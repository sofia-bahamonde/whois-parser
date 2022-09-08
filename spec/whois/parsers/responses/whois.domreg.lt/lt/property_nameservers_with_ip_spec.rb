# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.domreg.lt/lt/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.domreg.lt.rb'

describe Whois::Parsers::WhoisDomregLt, "property_nameservers_with_ip.expected" do

  subject do
    file = fixture("responses", "whois.domreg.lt/lt/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(4)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.serveriai.lt")
      expect(subject.nameservers[0].ipv4).to eq("79.98.25.142")
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.serveriai.lt")
      expect(subject.nameservers[1].ipv4).to eq("174.36.250.192")
      expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns3.serveriai.lt")
      expect(subject.nameservers[2].ipv4).to eq("79.98.29.142")
      expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns4.serveriai.lt")
      expect(subject.nameservers[3].ipv4).to eq("67.228.39.192")
    end
  end
end
