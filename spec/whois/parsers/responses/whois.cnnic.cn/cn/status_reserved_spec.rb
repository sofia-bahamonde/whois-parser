# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.cnnic.cn/cn/status_reserved.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.cnnic.cn.rb'

describe Whois::Parsers::WhoisCnnicCn, "status_reserved.expected" do

  subject do
    file = fixture("responses", "whois.cnnic.cn/cn/status_reserved.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#status" do
    it do
      expect(subject.status).to eq([])
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(false)
    end
  end
  describe "#reserved?" do
    it do
      expect(subject.reserved?).to eq(true)
    end
  end
end
