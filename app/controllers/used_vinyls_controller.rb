class UsedVinylsController < ApplicationController
  # GET /used_vinyls
  # GET /used_vinyls.json
  def index
    @used_vinyls = UsedVinyl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @used_vinyls }
    end
  end

  # GET /used_vinyls/1
  # GET /used_vinyls/1.json
  def show
    @used_vinyl = UsedVinyl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @used_vinyl }
    end
  end

  # GET /used_vinyls/new
  # GET /used_vinyls/new.json
  def new
    @used_vinyl = UsedVinyl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @used_vinyl }
    end
  end

  # GET /used_vinyls/1/edit
  def edit
    @used_vinyl = UsedVinyl.find(params[:id])
  end

  # POST /used_vinyls
  # POST /used_vinyls.json
  def create
    @used_vinyl = UsedVinyl.new(params[:used_vinyl])

    respond_to do |format|
      if @used_vinyl.save
        format.html { redirect_to @used_vinyl, notice: 'Used vinyl was successfully created.' }
        format.json { render json: @used_vinyl, status: :created, location: @used_vinyl }
      else
        format.html { render action: "new" }
        format.json { render json: @used_vinyl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /used_vinyls/1
  # PUT /used_vinyls/1.json
  def update
    @used_vinyl = UsedVinyl.find(params[:id])

    respond_to do |format|
      if @used_vinyl.update_attributes(params[:used_vinyl])
        format.html { redirect_to @used_vinyl, notice: 'Used vinyl was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @used_vinyl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /used_vinyls/1
  # DELETE /used_vinyls/1.json
  def destroy
    @used_vinyl = UsedVinyl.find(params[:id])
    @used_vinyl.destroy

    respond_to do |format|
      format.html { redirect_to used_vinyls_url }
      format.json { head :no_content }
    end
  end
end
