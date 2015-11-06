require 'spec_helper'
require 'shared_examples/collection_node'

module Dustbag
  describe BrowseNodes do
    include_context 'load xml from fixture'

    it_behaves_like 'a collection node of', BrowseNode
  end
end
