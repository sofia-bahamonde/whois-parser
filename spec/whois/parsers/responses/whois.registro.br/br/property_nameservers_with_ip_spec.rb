# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.registro.br/br/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.registro.br.rb'

describe Whois::Parsers::WhoisRegistroBr, "property_nameservers_with_ip.expected" do

  subject do
    file = fixture("responses", "whois.registro.br/br/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(4)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.hostgator.com.br")
      expect(subject.nameservers[0].ipv4).to eq("74.53.28.178")
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.hostgator.com.br")
      expect(subject.nameservers[1].ipv4).to eq("74.53.28.179")
      expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns3.hostgator.com.br")
      expect(subject.nameservers[2].ipv4).to eq("174.133.202.50")
      expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns4.hostgator.com.br")
      expect(subject.nameservers[3].ipv4).to eq("174.133.202.51")
    end
  end
end
