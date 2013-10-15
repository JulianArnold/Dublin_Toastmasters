class HowToFindUsController < ApplicationController
  # GET /how_to_find_us
  # GET /how_to_find_us.json
  def index
    @how_to_find_us = HowToFindU.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @how_to_find_us }
    end
  end

  # GET /how_to_find_us/1
  # GET /how_to_find_us/1.json
  def show
    @how_to_find_u = HowToFindU.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @how_to_find_u }
    end
  end

  # GET /how_to_find_us/new
  # GET /how_to_find_us/new.json
  def new
    @how_to_find_u = HowToFindU.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @how_to_find_u }
    end
  end

  # GET /how_to_find_us/1/edit
  def edit
    @how_to_find_u = HowToFindU.find(params[:id])
  end

  # POST /how_to_find_us
  # POST /how_to_find_us.json
  def create
    @how_to_find_u = HowToFindU.new(params[:how_to_find_u])

    respond_to do |format|
      if @how_to_find_u.save
        format.html { redirect_to @how_to_find_u, notice: 'How to find u was successfully created.' }
        format.json { render json: @how_to_find_u, status: :created, location: @how_to_find_u }
      else
        format.html { render action: "new" }
        format.json { render json: @how_to_find_u.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /how_to_find_us/1
  # PUT /how_to_find_us/1.json
  def update
    @how_to_find_u = HowToFindU.find(params[:id])

    respond_to do |format|
      if @how_to_find_u.update_attributes(params[:how_to_find_u])
        format.html { redirect_to @how_to_find_u, notice: 'How to find u was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @how_to_find_u.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /how_to_find_us/1
  # DELETE /how_to_find_us/1.json
  def destroy
    @how_to_find_u = HowToFindU.find(params[:id])
    @how_to_find_u.destroy

    respond_to do |format|
      format.html { redirect_to how_to_find_us_url }
      format.json { head :no_content }
    end
  end
end
