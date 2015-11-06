require 'spec_helper'
require 'shared_examples/collection_node'
require 'shared_examples/node_context'

module Vacuum
  module Parsers
    describe Variations do
      include_context 'load xml from fixture'

      it_behaves_like 'a collection node of', Item

      describe '#total' do
        it { expect(subject.total).to eq 4 }
      end

      describe '#total_pages' do
        it { expect(subject.total_pages).to eq 1 }
      end

      describe '#dimensions' do
        it { expect(subject.dimensions).to_not be_empty }
        it { expect(subject.dimensions).to include('Color') }
      end
    end
  end
end
