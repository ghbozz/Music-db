class TracksController < ApplicationController

  def index
    if params[:query].present?
      @all_tracks = Track.all
      @tracks = Array.new
      @all_tracks.each do |track|
        if track.all_tags.include? params[:query]
          @tracks << track
        end
      end
    else
      @tracks = Track.all
    end
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    @track.save
    redirect_to tracks_path
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    @track.update(track_params)
    redirect_to track_path(@track)
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to tracks_path
  end

  private

  def track_params
    params.require(:track).permit(:name, :all_tags, :bpm, :duration)
  end
end
