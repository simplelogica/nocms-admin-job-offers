# This migration comes from no_cms_job_offers (originally 20140711122552)
class AddDraftToNoCmsJobOffersJobOfferTranslations < ActiveRecord::Migration
  def change
    add_column :no_cms_job_offers_job_offer_translations, :draft, :boolean, default: false
  end
end
