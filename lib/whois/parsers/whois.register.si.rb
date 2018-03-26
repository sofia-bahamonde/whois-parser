#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2015 Simone Carletti <weppos@weppos.net>
#++


require_relative 'base'


module Whois
  class Parsers

    # Parser for the whois.register.si server.
    #
    # @note This parser is just a stub and provides only a few basic methods
    #   to check for domain availability and get domain status.
    #   Please consider to contribute implementing missing methods.
    #
    # @see Whois::Parsers::Example
    #   The Example parser for the list of all available methods.
    #
    class WhoisRegisterSi < Base

      property_supported :status do
        if content_for_scanner =~ /status:\s+(.+)\n/
          statuses = $1.downcase.split(",").map(&:strip)
          if statuses.include?("server_update_prohibited")
            :registered
          else
            Whois.bug!(ParserError, "Unknown status `#{$1}'.")
          end
        else
          :available
        end
      end

      property_supported :available? do
        content_for_scanner.match?(/% No entries found/)
      end

      property_supported :registered? do
        !available?
      end


      property_supported :created_on do
        if content_for_scanner =~ /created:\s+(.*)\n/
          parse_time($1)
        end
      end

      property_not_supported :updated_on

      property_supported :expires_on do
        if content_for_scanner =~ /expire:\s+(.*)\n/
          parse_time($1)
        end
      end


      property_supported :nameservers do
        content_for_scanner.scan(/nameserver:\s+(.+)\n/).flatten.map do |name|
          Parser::Nameserver.new(name: name.strip)
        end
      end

    end

  end
end
