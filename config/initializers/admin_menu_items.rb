NoCms::Admin.menu_items << {
  name: 'job_offers',
  url: proc { NoCms::Admin::JobOffers::Engine.routes.url_helpers.job_offers_path }
}
