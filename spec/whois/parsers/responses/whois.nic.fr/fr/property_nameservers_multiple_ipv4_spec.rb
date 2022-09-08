# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fr/fr/property_nameservers_multiple_ipv4.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.nic.fr.rb'

describe Whois::Parsers::WhoisNicFr, "property_nameservers_multiple_ipv4.expected" do

  subject do
    file = fixture("responses", "whois.nic.fr/fr/property_nameservers_multiple_ipv4.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(2)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.boursedirect.fr")
      expect(subject.nameservers[0].ipv4).to eq("212.157.203.190")
      expect(subject.nameservers[0].ipv6).to eq(nil)
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.boursedirect.fr")
      expect(subject.nameservers[1].ipv4).to eq("212.157.203.189")
      expect(subject.nameservers[1].ipv6).to eq(nil)
    end
  end
end
