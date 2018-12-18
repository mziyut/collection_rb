require "collection_rb/version"

module CollectionRb
  class Collection
    def initialize(params)
      @params = params
    end

    def all
      @params
    end
  end
end
