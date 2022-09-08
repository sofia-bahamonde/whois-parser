# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.it/it/property_contact_with_organization.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.nic.it.rb'

describe Whois::Parsers::WhoisNicIt, "property_contact_with_organization.expected" do

  subject do
    file = fixture("responses", "whois.nic.it/it/property_contact_with_organization.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("TT4277-ITNIC")
      expect(subject.admin_contacts[0].name).to eq("Tsao Tu")
      expect(subject.admin_contacts[0].organization).to eq("Tu Tsao")
      expect(subject.admin_contacts[0].address).to eq("30 Herbert Street")
      expect(subject.admin_contacts[0].city).to eq("Dublin")
      expect(subject.admin_contacts[0].zip).to eq("2")
      expect(subject.admin_contacts[0].state).to eq("IE")
      expect(subject.admin_contacts[0].country_code).to eq("IE")
      expect(subject.admin_contacts[0].created_on).to eq(Time.parse("2008-11-27 16:47:22"))
      expect(subject.admin_contacts[0].updated_on).to eq(Time.parse("2008-11-27 16:47:22"))
    end
  end
end
