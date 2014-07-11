# This migration comes from no_cms_job_offers (originally 20140708102215)
class CreateNoCmsJobOffersApplicants < ActiveRecord::Migration
  def change
    create_table :no_cms_job_offers_applicants do |t|
      t.string :name
      t.string :position
      t.text :message

      t.timestamps
    end
  end
end
