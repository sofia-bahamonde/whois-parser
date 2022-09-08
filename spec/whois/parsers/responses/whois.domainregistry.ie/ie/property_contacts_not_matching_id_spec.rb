# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.domainregistry.ie/ie/property_contacts_not_matching_id.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.domainregistry.ie.rb'

describe Whois::Parsers::WhoisDomainregistryIe, "property_contacts_not_matching_id.expected" do

  subject do
    file = fixture("responses", "whois.domainregistry.ie/ie/property_contacts_not_matching_id.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("KG37-IEDR")
      expect(subject.technical_contacts[0].name).to eq("Michael McGovern")
    end
  end
end
