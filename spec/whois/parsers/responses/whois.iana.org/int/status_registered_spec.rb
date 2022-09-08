# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.iana.org/int/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.iana.org.rb'

describe Whois::Parsers::WhoisIanaOrg, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.iana.org/int/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#status" do
    it do
      expect(subject.status).to eq(:registered)
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
      expect(subject.created_on).to eq(Time.parse("1997-08-26"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2012-08-07"))
    end
  end
  describe "#expires_on" do
    it do
      expect { subject.expires_on }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq(nil)
      expect(subject.registrant_contacts[0].name).to eq(nil)
      expect(subject.registrant_contacts[0].organization).to eq("North Atlantic Treaty Organization")
      expect(subject.registrant_contacts[0].address).to eq("Blvd Leopold III")
      expect(subject.registrant_contacts[0].city).to eq("1110 Brussels")
      expect(subject.registrant_contacts[0].zip).to eq("Brussels")
      expect(subject.registrant_contacts[0].country).to eq("Belgium")
      expect(subject.registrant_contacts[0].country_code).to eq(nil)
      expect(subject.registrant_contacts[0].phone).to eq(nil)
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq(nil)
      expect(subject.registrant_contacts[0].created_on).to eq(nil)
      expect(subject.registrant_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq(nil)
      expect(subject.admin_contacts[0].name).to eq("Aidan Murdock")
      expect(subject.admin_contacts[0].organization).to eq(nil)
      expect(subject.admin_contacts[0].address).to eq("SHAPE")
      expect(subject.admin_contacts[0].city).to eq("NCIA SP SDD SAS NAR")
      expect(subject.admin_contacts[0].zip).to eq("Mons Hainaut 7010")
      expect(subject.admin_contacts[0].country).to eq("Belgium")
      expect(subject.admin_contacts[0].country_code).to eq(nil)
      expect(subject.admin_contacts[0].phone).to eq("+32 65 44 9168")
      expect(subject.admin_contacts[0].fax).to eq("+32 65 44 9480")
      expect(subject.admin_contacts[0].email).to eq("aidan.murdock@ncia.nato.int")
      expect(subject.admin_contacts[0].created_on).to eq(nil)
      expect(subject.admin_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq(nil)
      expect(subject.technical_contacts[0].name).to eq("Francesco Conserva")
      expect(subject.technical_contacts[0].organization).to eq(nil)
      expect(subject.technical_contacts[0].address).to eq("SHAPE")
      expect(subject.technical_contacts[0].city).to eq("NCIA SP SMD ENT EMA")
      expect(subject.technical_contacts[0].zip).to eq("Mons Hainaut 7010")
      expect(subject.technical_contacts[0].country).to eq("Belgium")
      expect(subject.technical_contacts[0].country_code).to eq(nil)
      expect(subject.technical_contacts[0].phone).to eq("+32 65 44 7534")
      expect(subject.technical_contacts[0].fax).to eq("+32 65 44 7556")
      expect(subject.technical_contacts[0].email).to eq("francesco.conserva@ncia.nato.int")
      expect(subject.technical_contacts[0].created_on).to eq(nil)
      expect(subject.technical_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(7)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("globe.nc3a.nato.int")
      expect(subject.nameservers[0].ipv4).to eq("192.41.140.178")
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("max.nra.nato.int")
      expect(subject.nameservers[1].ipv4).to eq("192.101.252.69")
      expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[2].name).to eq("maxima.nra.nato.int")
      expect(subject.nameservers[2].ipv4).to eq("193.110.130.68")
      expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[3].name).to eq("ns.namsa.nato.int")
      expect(subject.nameservers[3].ipv4).to eq("193.168.11.15")
      expect(subject.nameservers[4]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[4].name).to eq("ns.saclantc.nato.int")
      expect(subject.nameservers[4].ipv4).to eq("192.106.197.1")
      expect(subject.nameservers[5]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[5].name).to eq("ns1.cs.ucl.ac.uk")
      expect(subject.nameservers[5].ipv4).to eq("128.16.5.32")
      expect(subject.nameservers[6]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[6].name).to eq("ns1.drenet.dnd.ca")
      expect(subject.nameservers[6].ipv4).to eq("131.136.242.3")
    end
  end
end
