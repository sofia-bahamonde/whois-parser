# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.tr/tr/property_registrant_contact_turkey.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.nic.tr.rb'

describe Whois::Parsers::WhoisNicTr, "property_registrant_contact_turkey.expected" do

  subject do
    file = fixture("responses", "whois.nic.tr/tr/property_registrant_contact_turkey.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq(nil)
      expect(subject.registrant_contacts[0].name).to eq("Hotel Bilgisayar Hizmetleri San. Tic. Turizm Ltd. Þti.")
      expect(subject.registrant_contacts[0].organization).to eq(nil)
      expect(subject.registrant_contacts[0].address).to eq("Cumhuriyet Cd. No:61 Bingül Han Asma Kat\nElmadað")
      expect(subject.registrant_contacts[0].city).to eq("Ýstanbul")
      expect(subject.registrant_contacts[0].zip).to eq(nil)
      expect(subject.registrant_contacts[0].state).to eq(nil)
      expect(subject.registrant_contacts[0].country).to eq("Türkiye")
      expect(subject.registrant_contacts[0].country_code).to eq(nil)
      expect(subject.registrant_contacts[0].phone).to eq("+ 90-212-2473997-")
      expect(subject.registrant_contacts[0].fax).to eq("+ 90-212-2473995")
      expect(subject.registrant_contacts[0].email).to eq("romeo6860@yahoo.com")
    end
  end
end
