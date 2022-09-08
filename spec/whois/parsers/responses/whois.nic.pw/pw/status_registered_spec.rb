# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.pw/pw/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.nic.pw.rb'

describe Whois::Parsers::WhoisNicPw, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.pw/pw/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) CentralNic Ltd https://www.centralnic.com/")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("google.pw")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("CNIC-DO949924")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(["clientTransferProhibited", "clientUpdateProhibited", "clientDeleteProhibited", "serverTransferProhibited"])
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("2012-10-12 10:19:46 UTC"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2014-01-18 00:13:36 UTC"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2017-02-10 23:59:59 UTC"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Parser::Registrar)
      expect(subject.registrar.id).to eq("7061-EM")
      expect(subject.registrar.name).to eq(nil)
      expect(subject.registrar.organization).to eq("MarkMonitor, Inc.")
      expect(subject.registrar.url).to eq("http://www.markmonitor.com/")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("H2396041")
      expect(subject.registrant_contacts[0].name).to eq("DNS Admin - Google Inc")
      expect(subject.registrant_contacts[0].organization).to eq("Google Inc")
      expect(subject.registrant_contacts[0].address).to eq("1600 Amphitheatre Parkway")
      expect(subject.registrant_contacts[0].city).to eq("Mountain View")
      expect(subject.registrant_contacts[0].zip).to eq("94043")
      expect(subject.registrant_contacts[0].state).to eq("CA")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("US")
      expect(subject.registrant_contacts[0].phone).to eq("+1.6502530000")
      expect(subject.registrant_contacts[0].fax).to eq("+1.6502530001")
      expect(subject.registrant_contacts[0].email).to eq("dns-admin@google.com")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("H2396041")
      expect(subject.admin_contacts[0].name).to eq("DNS Admin - Google Inc")
      expect(subject.admin_contacts[0].organization).to eq("Google Inc")
      expect(subject.admin_contacts[0].address).to eq("1600 Amphitheatre Parkway")
      expect(subject.admin_contacts[0].city).to eq("Mountain View")
      expect(subject.admin_contacts[0].zip).to eq("94043")
      expect(subject.admin_contacts[0].state).to eq("CA")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("US")
      expect(subject.admin_contacts[0].phone).to eq("+1.6502530000")
      expect(subject.admin_contacts[0].fax).to eq("+1.6502530001")
      expect(subject.admin_contacts[0].email).to eq("dns-admin@google.com")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("H2396041")
      expect(subject.technical_contacts[0].name).to eq("DNS Admin - Google Inc")
      expect(subject.technical_contacts[0].organization).to eq("Google Inc")
      expect(subject.technical_contacts[0].address).to eq("1600 Amphitheatre Parkway")
      expect(subject.technical_contacts[0].city).to eq("Mountain View")
      expect(subject.technical_contacts[0].zip).to eq("94043")
      expect(subject.technical_contacts[0].state).to eq("CA")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("US")
      expect(subject.technical_contacts[0].phone).to eq("+1.6502530000")
      expect(subject.technical_contacts[0].fax).to eq("+1.6502530001")
      expect(subject.technical_contacts[0].email).to eq("dns-admin@google.com")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(7)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.markmonitor.com")
      expect(subject.nameservers[0].ipv4).to eq(nil)
      expect(subject.nameservers[0].ipv6).to eq(nil)
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.markmonitor.com")
      expect(subject.nameservers[1].ipv4).to eq(nil)
      expect(subject.nameservers[1].ipv6).to eq(nil)
      expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[2].name).to eq("ns3.markmonitor.com")
      expect(subject.nameservers[2].ipv4).to eq(nil)
      expect(subject.nameservers[2].ipv6).to eq(nil)
      expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns4.markmonitor.com")
      expect(subject.nameservers[3].ipv4).to eq(nil)
      expect(subject.nameservers[3].ipv6).to eq(nil)
      expect(subject.nameservers[4]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[4].name).to eq("ns5.markmonitor.com")
      expect(subject.nameservers[4].ipv4).to eq(nil)
      expect(subject.nameservers[4].ipv6).to eq(nil)
      expect(subject.nameservers[5]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[5].name).to eq("ns6.markmonitor.com")
      expect(subject.nameservers[5].ipv4).to eq(nil)
      expect(subject.nameservers[5].ipv6).to eq(nil)
      expect(subject.nameservers[6]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[6].name).to eq("ns7.markmonitor.com")
      expect(subject.nameservers[6].ipv4).to eq(nil)
      expect(subject.nameservers[6].ipv6).to eq(nil)
    end
  end
end
