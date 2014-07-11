module NoCms
  module Admin
    module JobOffers
      module JobOffersHelper
        def job_offer_listing_item_classes item, current
          classes = []
          classes << 'current' if current == item
          classes << 'oculto' if item.draft
          classes
        end
      end
    end
  end
end
