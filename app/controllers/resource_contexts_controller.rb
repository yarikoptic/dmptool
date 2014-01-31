class ResourceContextsController < ApplicationController

  def index
    resource_customizations
  end

  # GET /resource_templates/new
  def new
    @resource_context = ResourceContext.new
  end

  def create
    @resource_context = ResourceContext.new(resource_context_params)
    respond_to do |format|
      if @resource_context.save
        format.html { redirect_to edit_resource_context_path(@resource_context), notice: 'Resource template was successfully created.' }
        format.json { render action: 'edit', status: :created, location: @resource_context }
      else
        format.html { render action: 'new' }
        format.json { render json: @resource_context.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @resource_context.update(resource_context_params)
        format.html { redirect_to edit_resource_context_path(@resource_context), notice: 'Resource context was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resource_context.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @resource_context.destroy
    respond_to do |format|
      format.html { redirect_to resource_contexts_url }
      format.json { head :no_content }
    end
  end
 

  def resource_customizations
    case params[:scope]
      when "all"
        @resource_contexts = ResourceContext.page(params[:page])
      when "all_limited"
        @resource_contexts = ResourceContext.page(params[:page]).per(5)
      else
        @resource_contexts = ResourceContext.page(params[:page]).per(5)
    end

    unless safe_has_role?(Role::DMP_ADMIN)
      @resource_contexts = @resource_contexts.
                            where(institution_id: [current_user.institution.subtree_ids])
    end
  end
end
