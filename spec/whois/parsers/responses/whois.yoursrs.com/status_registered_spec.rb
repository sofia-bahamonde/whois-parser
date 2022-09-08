# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.yoursrs.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.yoursrs.com.rb'

describe Whois::Parsers::WhoisYoursrsCom, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.yoursrs.com/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      expect(subject.domain).to eq("yoursrs.com")
    end
  end
  describe "#domain_id" do
    it do
      expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(["OK"])
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
      expect(subject.created_on).to eq(Time.parse("2003-11-24 09:40:55"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2014-01-22 14:04:50"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2014-11-24 09:40:55"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Parser::Registrar)
      expect(subject.registrar.id).to eq(nil)
      expect(subject.registrar.name).to eq("REALTIME REGISTER B.V.")
      expect(subject.registrar.organization).to eq(nil)
      expect(subject.registrar.url).to eq(nil)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("realtimeregister")
      expect(subject.registrant_contacts[0].name).to eq("Valentijn Borstlap")
      expect(subject.registrant_contacts[0].organization).to eq("Realtime Register B.V.")
      expect(subject.registrant_contacts[0].address).to eq("Ceintuurbaan 32a")
      expect(subject.registrant_contacts[0].city).to eq("Zwolle")
      expect(subject.registrant_contacts[0].zip).to eq("8024AA")
      expect(subject.registrant_contacts[0].state).to eq("Overijssel")
      expect(subject.registrant_contacts[0].country_code).to eq("NL")
      expect(subject.registrant_contacts[0].phone).to eq("+31.384530752")
      expect(subject.registrant_contacts[0].fax).to eq("+31.384540122")
      expect(subject.registrant_contacts[0].email).to eq("support@realtimeregister.com")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("realtimeregister")
      expect(subject.admin_contacts[0].name).to eq("Valentijn Borstlap")
      expect(subject.admin_contacts[0].organization).to eq("Realtime Register B.V.")
      expect(subject.admin_contacts[0].address).to eq("Ceintuurbaan 32a")
      expect(subject.admin_contacts[0].city).to eq("Zwolle")
      expect(subject.admin_contacts[0].zip).to eq("8024AA")
      expect(subject.admin_contacts[0].state).to eq("Overijssel")
      expect(subject.admin_contacts[0].country_code).to eq("NL")
      expect(subject.admin_contacts[0].phone).to eq("+31.384530752")
      expect(subject.admin_contacts[0].fax).to eq("+31.384540122")
      expect(subject.admin_contacts[0].email).to eq("support@realtimeregister.com")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("realtimeregister")
      expect(subject.technical_contacts[0].name).to eq("Valentijn Borstlap")
      expect(subject.technical_contacts[0].organization).to eq("Realtime Register B.V.")
      expect(subject.technical_contacts[0].address).to eq("Ceintuurbaan 32a")
      expect(subject.technical_contacts[0].city).to eq("Zwolle")
      expect(subject.technical_contacts[0].zip).to eq("8024AA")
      expect(subject.technical_contacts[0].state).to eq("Overijssel")
      expect(subject.technical_contacts[0].country_code).to eq("NL")
      expect(subject.technical_contacts[0].phone).to eq("+31.384530752")
      expect(subject.technical_contacts[0].fax).to eq("+31.384540122")
      expect(subject.technical_contacts[0].email).to eq("support@realtimeregister.com")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(2)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.yoursrs.com")
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.yoursrs.com")
    end
  end
end
