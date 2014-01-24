require 'rss'

class StaticPagesController < ApplicationController
  
  layout 'application', only: [:guidance]
  
  def home
    @rss = Rails.cache.read('rss')
    if @rss.nil?
      begin
        rss_xml = open(APP_CONFIG['rss']).read
        @rss = RSS::Parser.parse(rss_xml, false).items.first(5)
        Rails.cache.write("rss", @rss, :expires_in => 15.minutes)
      rescue Exception => e
        logger.error("Caught exception: #{e}.")
      end
    end
  end

  def about
  end
  
  def video
  end
  
  def partners
  end

  def help
  end

  def contact
    if request.post?
      if verify_recaptcha
        addl_to = (current_user ? [current_user.institution.contact_email] : [])
        GenericMailer.contact_email(params, addl_to).deliver
        flash[:alert] = "Your email message was sent to the DMPTool team."
        redirect_to :back and return
      end
      redirect_to contact_path(question_about: params['question_about'], name: params['name'],
                          email: params['email'], message: params[:message]) and return
    end
  end
  
  def privacy
  end
  
  def guidance
    @public_templates = RequirementsTemplate.public_visibility.includes(:institution, :sample_plans)
    
    unless params[:s].blank? || params[:e].blank?
      @public_templates = @public_templates.letter_range_by_institution(params[:s], params[:e])
    end
    
    if !params[:q].blank?
      @public_templates = @public_templates.search_terms(params[:q])
    end
    page_size = (params[:all_records] == 'true'? 999999 : 10)
    @public_templates = @public_templates.page(params[:page]).per(page_size)
    
    if current_user
      inst = current_user.institution
      @institution_templates = inst.requirements_templates_deep.institutional_visibility.
              includes(:institution, :sample_plans)
    end
  end
end
