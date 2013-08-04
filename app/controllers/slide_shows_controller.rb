class SlideShowsController < ApplicationController
  # GET /slide_shows
  # GET /slide_shows.json
  def index
    @slide_shows = SlideShow.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @slide_shows }
    end
  end

  # GET /slide_shows/1
  # GET /slide_shows/1.json
  def show
    @slide_show = SlideShow.find(params[:id])
    @slides = @slide_show.slides

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @slide_show.to_json(include: :slides) }
    end
  end

  # GET /slide_shows/new
  # GET /slide_shows/new.json
  def new
    @slide_show = SlideShow.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @slide_show }
    end
  end

  # GET /slide_shows/1/edit
  def edit
    @slide_show = SlideShow.find(params[:id])
  end

  # POST /slide_shows
  # POST /slide_shows.json
  def create
    @slide_show = SlideShow.new(params[:slide_show])
    for slide_params in params[:slides]
      @slide_show.slides << Slide.new(slide_params)
    end

    respond_to do |format|
      if @slide_show.save
        format.html { redirect_to @slide_show, notice: 'Slide show was successfully created.' }
        format.json { render json: @slide_show, status: :created, location: @slide_show }
      else
        format.html { render action: "new" }
        format.json { render json: @slide_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /slide_shows/1
  # PUT /slide_shows/1.json
  def update
    @slide_show = SlideShow.find(params[:id])

    respond_to do |format|
      if @slide_show.update_attributes(params[:slide_show])
        format.html { redirect_to @slide_show, notice: 'Slide show was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @slide_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slide_shows/1
  # DELETE /slide_shows/1.json
  def destroy
    @slide_show = SlideShow.find(params[:id])
    @slide_show.destroy

    respond_to do |format|
      format.html { redirect_to slide_shows_url }
      format.json { head :no_content }
    end
  end
end
