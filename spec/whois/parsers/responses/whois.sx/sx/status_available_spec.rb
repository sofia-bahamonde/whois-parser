# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.sx/sx/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.sx.rb'

describe Whois::Parsers::WhoisSx, "status_available.expected" do

  subject do
    file = fixture("responses", "whois.sx/sx/status_available.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("WHOIS LEGAL STATEMENT AND TERMS & CONDITIONS\nThe WHOIS service offered by OpenRegistry and the access to the\nrecords in the OpenRegistry WHOIS database are provided for information\npurposes only. It allows persons to check whether a specific domain name\nis still available or not and to obtain information related to the\nregistration records of existing domain names. You are not authorized to\naccess or query our WHOIS  database through the use of electronic\nprocesses that are high-volume and  automated except as reasonably\nnecessary to register domain names or modify existing registrations.\n\nOpenRegistry cannot, under any circumstances, be held liable should the\nstored information prove to be wrong, incomplete or inaccurate in any sense.\n\nBy submitting a WHOIS query you agree not to use the information made\navailable to:\n- Allow, enable or otherwise support the transmission of unsolicited,\ncommercial advertising or other solicitations whether via email, telephone\nor otherwise;\n- Target advertising in any possible way;\n- Cause nuisance in any possible way to the registrants by sending (whether\nby automated, electronic processes capable of enabling high volumes or\nother possible means) messages to them.\n\nWithout prejudice to the above, it is explicitly forbidden to extract, copy\nand/or use or re-utilise in any form and  by any means (electronically or\nnot) the whole or a quantitatively or qualitatively substantial part of the\ncontents of the WHOIS database without prior and explicit permission by\nOpenRegistry, nor in any attempt hereof, to apply automated, electronic\nprocesses to OpenRegistry (or its systems).\n\nBy submitting the query you agree that any reproduction and/or transmission\nof data for commercial purposes will always be considered as the extraction\nof a substantial part of the content of the WHOIS database. You also agree\nto abide by this policy and accept that OpenRegistry can take measures to\nlimit the use of its WHOIS services in order to protect the privacy of its\nregistrants and/or the integrity of the database. OpenRegistry reserves the\nright  to restrict your access to the WHOIS database in its sole discretion\nto ensure operational stability.  OpenRegistry may restrict or terminate your\naccess to the WHOIS database for failure to abide by these terms of use.\n\nOpenRegistry reserves the right to modify these terms at any time.")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("u34jedzcq.sx")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq(nil)
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(:available)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(true)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(false)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to eq(nil)
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to eq(nil)
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to eq(nil)
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to eq(nil)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to eq([])
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to eq([])
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to eq([])
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to eq([])
    end
  end
end
