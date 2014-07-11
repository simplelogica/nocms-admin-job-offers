# This migration comes from no_cms_job_offers (originally 20140708104648)
class AddJobOfferToNoCmsJobOffersApplicant < ActiveRecord::Migration
  def change
    add_reference :no_cms_job_offers_applicants, :job_offer, index: true
  end
end
