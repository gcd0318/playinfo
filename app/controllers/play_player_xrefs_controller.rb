class PlayPlayerXrefsController < ApplicationController
  # GET /play_player_xrefs
  # GET /play_player_xrefs.json
  def index
    @play_player_xrefs = PlayPlayerXref.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @play_player_xrefs }
    end
  end

  # GET /play_player_xrefs/1
  # GET /play_player_xrefs/1.json
  def show
    @play_player_xref = PlayPlayerXref.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @play_player_xref }
    end
  end

  # GET /play_player_xrefs/new
  # GET /play_player_xrefs/new.json
  def new
    @play_player_xref = PlayPlayerXref.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @play_player_xref }
    end
  end

  # GET /play_player_xrefs/1/edit
  def edit
    @play_player_xref = PlayPlayerXref.find(params[:id])
  end

  # POST /play_player_xrefs
  # POST /play_player_xrefs.json
  def create
    @play_player_xref = PlayPlayerXref.new(params[:play_player_xref])

    respond_to do |format|
      if @play_player_xref.save
        format.html { redirect_to @play_player_xref, notice: 'Play player xref was successfully created.' }
        format.json { render json: @play_player_xref, status: :created, location: @play_player_xref }
      else
        format.html { render action: "new" }
        format.json { render json: @play_player_xref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /play_player_xrefs/1
  # PUT /play_player_xrefs/1.json
  def update
    @play_player_xref = PlayPlayerXref.find(params[:id])

    respond_to do |format|
      if @play_player_xref.update_attributes(params[:play_player_xref])
        format.html { redirect_to @play_player_xref, notice: 'Play player xref was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @play_player_xref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /play_player_xrefs/1
  # DELETE /play_player_xrefs/1.json
  def destroy
    @play_player_xref = PlayPlayerXref.find(params[:id])
    @play_player_xref.destroy

    respond_to do |format|
      format.html { redirect_to play_player_xrefs_url }
      format.json { head :no_content }
    end
  end
end
