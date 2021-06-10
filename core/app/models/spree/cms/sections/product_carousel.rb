module Spree::Cms::Sections
  class ProductCarousel < Spree::CmsSection
    after_initialize :default_values

    LINKED_RESOURCE_TYPE = ['Spree::Taxon']

    def widths
      ['Full']
    end

    private

    def default_values
      self.width ||= 'Full'
      self.fit ||= 'Screen'
      self.linked_resource_type ||= 'Spree::Taxon'
    end
  end
end
