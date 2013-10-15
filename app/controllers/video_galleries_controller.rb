class VideoGalleriesController < ApplicationController
  # GET /video_galleries
  # GET /video_galleries.json
  def index
    @video_galleries = VideoGallery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @video_galleries }
    end
  end

  # GET /video_galleries/1
  # GET /video_galleries/1.json
  def show
    @video_gallery = VideoGallery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @video_gallery }
    end
  end

  # GET /video_galleries/new
  # GET /video_galleries/new.json
  def new
    @video_gallery = VideoGallery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @video_gallery }
    end
  end

  # GET /video_galleries/1/edit
  def edit
    @video_gallery = VideoGallery.find(params[:id])
  end

  # POST /video_galleries
  # POST /video_galleries.json
  def create
    @video_gallery = VideoGallery.new(params[:video_gallery])

    respond_to do |format|
      if @video_gallery.save
        format.html { redirect_to @video_gallery, notice: 'Video gallery was successfully created.' }
        format.json { render json: @video_gallery, status: :created, location: @video_gallery }
      else
        format.html { render action: "new" }
        format.json { render json: @video_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /video_galleries/1
  # PUT /video_galleries/1.json
  def update
    @video_gallery = VideoGallery.find(params[:id])

    respond_to do |format|
      if @video_gallery.update_attributes(params[:video_gallery])
        format.html { redirect_to @video_gallery, notice: 'Video gallery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @video_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_galleries/1
  # DELETE /video_galleries/1.json
  def destroy
    @video_gallery = VideoGallery.find(params[:id])
    @video_gallery.destroy

    respond_to do |format|
      format.html { redirect_to video_galleries_url }
      format.json { head :no_content }
    end
  end
end
