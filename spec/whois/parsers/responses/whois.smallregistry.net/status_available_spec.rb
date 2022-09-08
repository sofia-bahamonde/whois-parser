# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.smallregistry.net/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.smallregistry.net.rb'

describe Whois::Parsers::WhoisSmallregistryNet, "status_available.expected" do

  subject do
    file = fixture("responses", "whois.smallregistry.net/status_available.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("Welcome to the SMALLREGISTRY WHOIS Server. Datas are available in order to supply you with information purpose only, PROMOPIXEL is not responsible for its accuracy. Copy of whole or part of the data without permission from PROMOPIXEL is strictly forbidden. The sole owner of a domain is the entity described in the relevant \"registrant:\" record. Domain or subdomain ownership disputes should be settled by contacting SMALLREGISTRY registry: https://www.smallregistry.net, or PROMOPIXEL: http://www.promopixel.com\nBienvenue sur le serveur WHOIS de SMALLREGISTRY. Les données fournies sont disponibles à titre informatif uniquement, PROMOPIXEL ne garantit pas leurs exactitudes. La copie de tout ou partie de la base de données est interdite sans l'autorisation expresse de PROMOPIXEL. Le seul propriétaire d'un domaine ou d'un sous-domaine est l'entité décrite dans l’enregistrement \"registrant:\" correspondant. Un différent sur la propriété d'un nom de domaine ou de sous-domaine peut être réglé en contactant le registre SMALLREGISTRY: https://www.smallregistry.net, ou PROMOPIXEL: http://www.promopixel.com")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq(nil)
    end
  end
  describe "#domain_id" do
    it do
      expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
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
