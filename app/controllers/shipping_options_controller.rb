class ShippingOptionsController < ApplicationController
  # GET /shipping_options
  # GET /shipping_options.json
  def index
    @shipping_options = ShippingOption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shipping_options }
    end
  end

  # GET /shipping_options/1
  # GET /shipping_options/1.json
  def show
    @shipping_option = ShippingOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shipping_option }
    end
  end

  # GET /shipping_options/new
  # GET /shipping_options/new.json
  def new
    @shipping_option = ShippingOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shipping_option }
    end
  end

  # GET /shipping_options/1/edit
  def edit
    @shipping_option = ShippingOption.find(params[:id])
  end

  # POST /shipping_options
  # POST /shipping_options.json
  def create
    @shipping_option = ShippingOption.new(params[:shipping_option])

    respond_to do |format|
      if @shipping_option.save
        format.html { redirect_to @shipping_option, notice: 'Shipping option was successfully created.' }
        format.json { render json: @shipping_option, status: :created, location: @shipping_option }
      else
        format.html { render action: "new" }
        format.json { render json: @shipping_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shipping_options/1
  # PUT /shipping_options/1.json
  def update
    @shipping_option = ShippingOption.find(params[:id])

    respond_to do |format|
      if @shipping_option.update_attributes(params[:shipping_option])
        format.html { redirect_to @shipping_option, notice: 'Shipping option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shipping_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipping_options/1
  # DELETE /shipping_options/1.json
  def destroy
    @shipping_option = ShippingOption.find(params[:id])
    @shipping_option.destroy

    respond_to do |format|
      format.html { redirect_to shipping_options_url }
      format.json { head :no_content }
    end
  end
end
