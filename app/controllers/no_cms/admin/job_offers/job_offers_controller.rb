require_dependency "no_cms/admin/job_offers/application_controller"

module NoCms::Admin::JobOffers
  class JobOffersController < ApplicationController

    before_filter :load_menu_section
    before_filter :load_job_offer, only: [:edit, :update, :destroy]
    before_filter :load_sidebar, only: [:index, :new, :edit]


    def new
      @job_offer = NoCms::JobOffers::JobOffer.new
    end

    def create
      @job_offer = NoCms::JobOffers::JobOffer.new job_offer_params
      if @job_offer.save
        @nocms_logger.info(I18n.t('.no_cms.admin.job_offers.job_offers.create.success', title: @job_offer.title), true)
        redirect_to edit_job_offer_path(@job_offer)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.job_offers.job_offers.create.error', title: @job_offer.title))
        load_sidebar
        render :new
      end
    end

    def edit
      @nocms_logger.add_message :job_offers, I18n.t('.no_cms.admin.job_offers.job_offers.edit.log_messages', title: @job_offer.title)
    end

    def update
      if @job_offer.update_attributes job_offer_params
        @nocms_logger.info(I18n.t('.no_cms.admin.job_offers.job_offers.update.success', title: @job_offer.title), true)
        redirect_to edit_job_offer_path(@job_offer)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.job_offers.job_offers.update.error', title: @job_offer.title))
        load_sidebar
        render :edit
      end
    end

    def destroy
      if @job_offer.destroy
        @nocms_logger.info(I18n.t('.no_cms.admin.job_offers.job_offers.destroy.success', title: @job_offer.title), true)
      else
        @nocms_logger.error(I18n.t('.no_cms.admin.job_offers.job_offers.destroy.error', title: @job_offer.title), true)
      end
      redirect_to job_offers_path
    end

    private

    def load_menu_section
      @current_section = 'job_offers'
    end

    def load_job_offer
      @job_offer = NoCms::JobOffers::JobOffer.friendly.find(params[:id])
    end

    def load_sidebar
      @job_offers = NoCms::JobOffers::JobOffer.all
    end

    def job_offer_params
      job_offer_params = params.require(:job_offer).permit(:title, :slug, :description)
    end

  end
end
