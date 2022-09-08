# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.35.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.35.com.rb'

describe Whois::Parsers::Whois35Com, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.35.com/status_registered.txt")
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
      expect(subject.created_on).to eq(Time.parse("2010-09-10"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2014-08-21 23:48:59"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2015-09-10"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Parser::Registrar)
      expect(subject.registrar.id).to eq("1316")
      expect(subject.registrar.name).to eq("35 Technology Co., Ltd.")
      expect(subject.registrar.organization).to eq("35 Technology Co., Ltd.")
      expect(subject.registrar.url).to eq("http://www.35.com")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq(nil)
      expect(subject.registrant_contacts[0].name).to eq("baolei")
      expect(subject.registrant_contacts[0].organization).to eq("jiaxing zhongwang ad co.,ltd.")
      expect(subject.registrant_contacts[0].address).to eq("126# jiyang rd.")
      expect(subject.registrant_contacts[0].city).to eq("jiaxing")
      expect(subject.registrant_contacts[0].zip).to eq("314000")
      expect(subject.registrant_contacts[0].state).to eq("zhejiang")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("CN")
      expect(subject.registrant_contacts[0].phone).to eq("+86.57382033533")
      expect(subject.registrant_contacts[0].fax).to eq("+86.57382033533")
      expect(subject.registrant_contacts[0].email).to eq("aaa@zjcf.com")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq(nil)
      expect(subject.admin_contacts[0].name).to eq("baolei")
      expect(subject.admin_contacts[0].organization).to eq("jiaxing zhongwang ad co.,ltd.")
      expect(subject.admin_contacts[0].address).to eq("126# jiyang rd.")
      expect(subject.admin_contacts[0].city).to eq("jiaxing")
      expect(subject.admin_contacts[0].zip).to eq("314000")
      expect(subject.admin_contacts[0].state).to eq("zhejiang")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("CN")
      expect(subject.admin_contacts[0].phone).to eq("+86.57382033533")
      expect(subject.admin_contacts[0].fax).to eq("+86.57382033533")
      expect(subject.admin_contacts[0].email).to eq("aaa@zjcf.com")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq(nil)
      expect(subject.technical_contacts[0].name).to eq("baolei")
      expect(subject.technical_contacts[0].organization).to eq("jiaxing zhongwang ad co.,ltd.")
      expect(subject.technical_contacts[0].address).to eq("126# jiyang rd.")
      expect(subject.technical_contacts[0].city).to eq("jiaxing")
      expect(subject.technical_contacts[0].zip).to eq("314000")
      expect(subject.technical_contacts[0].state).to eq("zhejiang")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("CN")
      expect(subject.technical_contacts[0].phone).to eq("+86.57382033533")
      expect(subject.technical_contacts[0].fax).to eq("+86.57382033533")
      expect(subject.technical_contacts[0].email).to eq("aaa@zjcf.com")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(2)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns3.dns-diy.com")
      expect(subject.nameservers[0].ipv4).to eq(nil)
      expect(subject.nameservers[0].ipv6).to eq(nil)
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns4.dns-diy.com")
      expect(subject.nameservers[1].ipv4).to eq(nil)
      expect(subject.nameservers[1].ipv6).to eq(nil)
    end
  end
end
