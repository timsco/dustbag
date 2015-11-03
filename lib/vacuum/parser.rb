require 'vacuum/parser/node'
require 'vacuum/parser/collection_node'
require 'vacuum/parser/map_collection_node'

require 'vacuum/parsers/arguments'
require 'vacuum/parsers/http_headers'
require 'vacuum/parsers/operation_request'
require 'vacuum/parsers/common'
require 'vacuum/parsers/item_search_response'

module Vacuum
  module Parser
    extend self

    class Error < RuntimeError; end

    def parse(body)
      document = Ox.parse(body)

      raise Error.new('Not a Ox::Document') unless document.is_a?(Ox::Document)

      response_type = document.root.name

      case response_type
      when 'ItemSearchResponse'
        Parsers::ItemSearchResponse.new(document.root)
      else
        raise Error.new(response_type + ' is not implemented!')
      end
    end

  end
end