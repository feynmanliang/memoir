class SlideShowsController < ApplicationController
  before_filter :authenticate_user!,:only=> [:new, :create]

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

  # POST /slide_shows
  # POST /slide_shows.json
  def create
    @slide_show = SlideShow.create(params[:slide_show])
    params[:slides].each_value do |v|
      @slide_show.slides.create(v)
    end

    respond_to do |format|
      if @slide_show.save
        format.html { redirect_to @slide_show, notice: 'Slide show was successfully created.' }
        format.json { render json: @slide_show.to_json(include: :slides), status: :created, location: @slide_show }
      else
        format.html { render action: "new" }
        format.json { render json: @slide_show.errors, status: :unprocessable_entity }
      end
    end
  end
end
