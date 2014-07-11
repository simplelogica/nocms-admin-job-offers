Rails.application.routes.draw do

  mount NoCms::Admin::JobOffers::Engine => "/no_cms/admin/job_offers"
end
