class PersonTagsController < ApplicationController
  before_action :set_person_tag, only: [:show, :edit, :update, :destroy]

  # GET /person_tags
  # GET /person_tags.json
  def index
    @person_tags = PersonTag.all
  end

  # GET /person_tags/1
  # GET /person_tags/1.json
  def show
  end

  # GET /person_tags/new
  def new
    @person_tag = PersonTag.new
  end

  # GET /person_tags/1/edit
  def edit
  end

  # POST /person_tags
  # POST /person_tags.json
  def create
    @person_tag = PersonTag.new(person_tag_params)

    respond_to do |format|
      if @person_tag.save
        format.html { redirect_to @person_tag, notice: 'Person tag was successfully created.' }
        format.json { render :show, status: :created, location: @person_tag }
      else
        format.html { render :new }
        format.json { render json: @person_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_tags/1
  # PATCH/PUT /person_tags/1.json
  def update
    respond_to do |format|
      if @person_tag.update(person_tag_params)
        format.html { redirect_to @person_tag, notice: 'Person tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_tag }
      else
        format.html { render :edit }
        format.json { render json: @person_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_tags/1
  # DELETE /person_tags/1.json
  def destroy
    @person_tag.destroy
    respond_to do |format|
      format.html { redirect_to person_tags_url, notice: 'Person tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_tag
      @person_tag = PersonTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_tag_params
      params.require(:person_tag).permit(:person_id, :tag_id)
    end
end
