# This migration comes from no_cms_job_offers (originally 20140707160812)
class AddSlugToNoCmsJobOffersJobOfferTranslations < ActiveRecord::Migration
  def change
    add_column :no_cms_job_offers_job_offer_translations, :slug, :string
  end
end
