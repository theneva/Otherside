class TimeentriesController < ApplicationController
  # GET /timeentries
  # GET /timeentries.json
  def index
    @timeentries = Timeentry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timeentries }
    end
  end

  # GET /timeentries/1
  # GET /timeentries/1.json
  def show
    @timeentry = Timeentry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timeentry }
    end
  end

  # GET /timeentries/new
  # GET /timeentries/new.json
  def new
    @timeentry = Timeentry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @timeentry }
    end
  end

  # GET /timeentries/1/edit
  def edit
    @timeentry = Timeentry.find(params[:id])
  end

  # POST /timeentries
  # POST /timeentries.json
  def create
    @timeentry = Timeentry.new(params[:timeentry])

    respond_to do |format|
      if @timeentry.save
        format.html { redirect_to @timeentry, notice: 'Timeentry was successfully created.' }
        format.json { render json: @timeentry, status: :created, location: @timeentry }
      else
        format.html { render action: "new" }
        format.json { render json: @timeentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /timeentries/1
  # PUT /timeentries/1.json
  def update
    @timeentry = Timeentry.find(params[:id])

    respond_to do |format|
      if @timeentry.update_attributes(params[:timeentry])
        format.html { redirect_to @timeentry, notice: 'Timeentry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timeentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timeentries/1
  # DELETE /timeentries/1.json
  def destroy
    @timeentry = Timeentry.find(params[:id])
    @timeentry.destroy

    respond_to do |format|
      format.html { redirect_to timeentries_url }
      format.json { head :no_content }
    end
  end
end
