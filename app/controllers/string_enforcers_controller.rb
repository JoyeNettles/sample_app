class StringEnforcersController < ApplicationController
  before_action :set_string_enforcer, only: [:show, :edit, :update, :destroy]

  # GET /string_enforcers
  # GET /string_enforcers.json
  def index
    @string_enforcers = ExampleUser.all
  end

  # GET /string_enforcers/1
  # GET /string_enforcers/1.json
  def show
  end

  # GET /string_enforcers/new
  def new
    @string_enforcer = ExampleUser.new
  end

  # GET /string_enforcers/1/edit
  def edit
  end

  # POST /string_enforcers
  # POST /string_enforcers.json
  def create
    @string_enforcer = ExampleUser.new(string_enforcer_params)

    respond_to do |format|
      if @string_enforcer.save
        format.html { redirect_to @string_enforcer, notice: 'String enforcer was successfully created.' }
        format.json { render :show, status: :created, location: @string_enforcer }
      else
        format.html { render :new }
        format.json { render json: @string_enforcer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /string_enforcers/1
  # PATCH/PUT /string_enforcers/1.json
  def update
    respond_to do |format|
      if @string_enforcer.update(string_enforcer_params)
        format.html { redirect_to @string_enforcer, notice: 'String enforcer was successfully updated.' }
        format.json { render :show, status: :ok, location: @string_enforcer }
      else
        format.html { render :edit }
        format.json { render json: @string_enforcer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /string_enforcers/1
  # DELETE /string_enforcers/1.json
  def destroy
    @string_enforcer.destroy
    respond_to do |format|
      format.html { redirect_to string_enforcers_url, notice: 'String enforcer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_string_enforcer
      @string_enforcer = ExampleUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def string_enforcer_params
      params.fetch(:string_enforcer, {})
    end
end
