# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/uk.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.centralnic.com.rb'

describe Whois::Parsers::WhoisCentralnicCom, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.centralnic.com/uk.com/status_registered.txt")
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
      expect(subject.domain).to eq("history.uk.com")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("CNIC-DO86293")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(["ok"])
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
      expect(subject.created_on).to eq(Time.parse("2001-08-31 11:50:57 UTC"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2013-09-03 10:36:47 UTC"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2015-08-31 23:59:59 UTC"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Parser::Registrar)
      expect(subject.registrar.id).to eq("H78362")
      expect(subject.registrar.name).to eq(nil)
      expect(subject.registrar.organization).to eq("E-VELOCITY LTD")
      expect(subject.registrar.url).to eq("http://www.e-velocity.co.uk/")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("H1045821")
      expect(subject.registrant_contacts[0].name).to eq("Mr. Ray Hatley")
      expect(subject.registrant_contacts[0].organization).to eq(nil)
      expect(subject.registrant_contacts[0].address).to eq("Tallow House\n65-66 Lower Galdeford")
      expect(subject.registrant_contacts[0].city).to eq("Ludlow")
      expect(subject.registrant_contacts[0].zip).to eq("SY8 1RU")
      expect(subject.registrant_contacts[0].state).to eq("Shropshire")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("GB")
      expect(subject.registrant_contacts[0].phone).to eq("+44.1584873633")
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq("ray@hatley.co.uk")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("H305798")
      expect(subject.admin_contacts[0].name).to eq("Mr. Ray Hatley")
      expect(subject.admin_contacts[0].organization).to eq(nil)
      expect(subject.admin_contacts[0].address).to eq("Tallow House\n65-66 Lower Galdeford")
      expect(subject.admin_contacts[0].city).to eq("Ludlow")
      expect(subject.admin_contacts[0].zip).to eq("SY8 1RU")
      expect(subject.admin_contacts[0].state).to eq("Shropshire")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("GB")
      expect(subject.admin_contacts[0].phone).to eq("+44.1584873633")
      expect(subject.admin_contacts[0].fax).to eq(nil)
      expect(subject.admin_contacts[0].email).to eq("ray@hatley.co.uk")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("H78362")
      expect(subject.technical_contacts[0].name).to eq("Mr Simon Williams")
      expect(subject.technical_contacts[0].organization).to eq("E-VELOCITY LTD")
      expect(subject.technical_contacts[0].address).to eq("P.O Box 3295\nBrighton")
      expect(subject.technical_contacts[0].city).to eq(nil)
      expect(subject.technical_contacts[0].zip).to eq("BN50 9EY")
      expect(subject.technical_contacts[0].state).to eq(nil)
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("GB")
      expect(subject.technical_contacts[0].phone).to eq("+44.1273684969")
      expect(subject.technical_contacts[0].fax).to eq(nil)
      expect(subject.technical_contacts[0].email).to eq("simon@e-velocity.co.uk")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(2)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns37.eukdns.com")
      expect(subject.nameservers[0].ipv4).to eq(nil)
      expect(subject.nameservers[0].ipv6).to eq(nil)
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns38.eukdns.com")
      expect(subject.nameservers[1].ipv4).to eq(nil)
      expect(subject.nameservers[1].ipv6).to eq(nil)
    end
  end
end
