module Dustbag
  module SimpleProduct
    def asin
      subnode_text('ASIN')
    end

    def title
      subnode_text('Title')
    end
  end
end
