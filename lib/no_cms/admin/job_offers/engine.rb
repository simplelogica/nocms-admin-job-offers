module NoCms
  module Admin
    module JobOffers
      class Engine < ::Rails::Engine
        isolate_namespace NoCms::Admin::JobOffers
      end
    end
  end
end
