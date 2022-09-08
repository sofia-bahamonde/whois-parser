# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dns.be/be/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.dns.be.rb'

describe Whois::Parsers::WhoisDnsBe, "property_nameservers_with_ip.expected" do

  subject do
    file = fixture("responses", "whois.dns.be/be/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(3)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns3.register.be")
      expect(subject.nameservers[0].ipv4).to eq("91.121.5.186")
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns1.register.be")
      expect(subject.nameservers[1].ipv4).to eq("80.169.63.207")
      expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns2.register.be")
      expect(subject.nameservers[2].ipv4).to eq("217.21.176.34")
    end
  end
end
