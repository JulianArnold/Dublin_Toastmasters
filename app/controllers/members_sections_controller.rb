class MembersSectionsController < ApplicationController
  # GET /members_sections
  # GET /members_sections.json
  def index
    @members_sections = MembersSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @members_sections }
    end
  end

  # GET /members_sections/1
  # GET /members_sections/1.json
  def show
    @members_section = MembersSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @members_section }
    end
  end

  # GET /members_sections/new
  # GET /members_sections/new.json
  def new
    @members_section = MembersSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @members_section }
    end
  end

  # GET /members_sections/1/edit
  def edit
    @members_section = MembersSection.find(params[:id])
  end

  # POST /members_sections
  # POST /members_sections.json
  def create
    @members_section = MembersSection.new(params[:members_section])

    respond_to do |format|
      if @members_section.save
        format.html { redirect_to @members_section, notice: 'Members section was successfully created.' }
        format.json { render json: @members_section, status: :created, location: @members_section }
      else
        format.html { render action: "new" }
        format.json { render json: @members_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /members_sections/1
  # PUT /members_sections/1.json
  def update
    @members_section = MembersSection.find(params[:id])

    respond_to do |format|
      if @members_section.update_attributes(params[:members_section])
        format.html { redirect_to @members_section, notice: 'Members section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @members_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members_sections/1
  # DELETE /members_sections/1.json
  def destroy
    @members_section = MembersSection.find(params[:id])
    @members_section.destroy

    respond_to do |format|
      format.html { redirect_to members_sections_url }
      format.json { head :no_content }
    end
  end
end
