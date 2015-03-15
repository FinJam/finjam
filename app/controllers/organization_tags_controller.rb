class OrganizationTagsController < ApplicationController
  before_action :set_organization_tag, only: [:show, :edit, :update, :destroy]

  # GET /organization_tags
  # GET /organization_tags.json
  def index
    @organization_tags = OrganizationTag.all
  end

  # GET /organization_tags/1
  # GET /organization_tags/1.json
  def show
  end

  # GET /organization_tags/new
  def new
    @organization_tag = OrganizationTag.new
  end

  # GET /organization_tags/1/edit
  def edit
  end

  # POST /organization_tags
  # POST /organization_tags.json
  def create
    @organization_tag = OrganizationTag.new(organization_tag_params)

    respond_to do |format|
      if @organization_tag.save
        format.html { redirect_to @organization_tag, notice: 'Organization tag was successfully created.' }
        format.json { render :show, status: :created, location: @organization_tag }
      else
        format.html { render :new }
        format.json { render json: @organization_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_tags/1
  # PATCH/PUT /organization_tags/1.json
  def update
    respond_to do |format|
      if @organization_tag.update(organization_tag_params)
        format.html { redirect_to @organization_tag, notice: 'Organization tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_tag }
      else
        format.html { render :edit }
        format.json { render json: @organization_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_tags/1
  # DELETE /organization_tags/1.json
  def destroy
    @organization_tag.destroy
    respond_to do |format|
      format.html { redirect_to organization_tags_url, notice: 'Organization tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_tag
      @organization_tag = OrganizationTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_tag_params
      params.require(:organization_tag).permit(:organization_id, :tag_id)
    end
end
