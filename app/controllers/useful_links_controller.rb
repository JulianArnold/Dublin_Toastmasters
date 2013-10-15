class UsefulLinksController < ApplicationController
  # GET /useful_links
  # GET /useful_links.json
  def index
    @useful_links = UsefulLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @useful_links }
    end
  end

  # GET /useful_links/1
  # GET /useful_links/1.json
  def show
    @useful_link = UsefulLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @useful_link }
    end
  end

  # GET /useful_links/new
  # GET /useful_links/new.json
  def new
    @useful_link = UsefulLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @useful_link }
    end
  end

  # GET /useful_links/1/edit
  def edit
    @useful_link = UsefulLink.find(params[:id])
  end

  # POST /useful_links
  # POST /useful_links.json
  def create
    @useful_link = UsefulLink.new(params[:useful_link])

    respond_to do |format|
      if @useful_link.save
        format.html { redirect_to @useful_link, notice: 'Useful link was successfully created.' }
        format.json { render json: @useful_link, status: :created, location: @useful_link }
      else
        format.html { render action: "new" }
        format.json { render json: @useful_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /useful_links/1
  # PUT /useful_links/1.json
  def update
    @useful_link = UsefulLink.find(params[:id])

    respond_to do |format|
      if @useful_link.update_attributes(params[:useful_link])
        format.html { redirect_to @useful_link, notice: 'Useful link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @useful_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /useful_links/1
  # DELETE /useful_links/1.json
  def destroy
    @useful_link = UsefulLink.find(params[:id])
    @useful_link.destroy

    respond_to do |format|
      format.html { redirect_to useful_links_url }
      format.json { head :no_content }
    end
  end
end
