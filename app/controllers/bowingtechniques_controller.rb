class BowingtechniquesController < ApplicationController
  before_action :set_bowingtechnique, only: %i[ show edit update destroy ]

  # GET /bowingtechniques or /bowingtechniques.json
  def index
    @bowingtechniques = Bowingtechnique.all
  end

  # GET /bowingtechniques/1 or /bowingtechniques/1.json
  def show
  end

  # GET /bowingtechniques/new
  def new
    @bowingtechnique = Bowingtechnique.new
  end

  # GET /bowingtechniques/1/edit
  def edit
  end

  # POST /bowingtechniques or /bowingtechniques.json
  def create
    @bowingtechnique = Bowingtechnique.new(bowingtechnique_params)

    respond_to do |format|
      if @bowingtechnique.save
        format.html { redirect_to @bowingtechnique, notice: "Bowingtechnique was successfully created." }
        format.json { render :show, status: :created, location: @bowingtechnique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bowingtechnique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bowingtechniques/1 or /bowingtechniques/1.json
  def update
    respond_to do |format|
      if @bowingtechnique.update(bowingtechnique_params)
        format.html { redirect_to @bowingtechnique, notice: "Bowingtechnique was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @bowingtechnique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bowingtechnique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bowingtechniques/1 or /bowingtechniques/1.json
  def destroy
    @bowingtechnique.destroy!

    respond_to do |format|
      format.html { redirect_to bowingtechniques_path, notice: "Bowingtechnique was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bowingtechnique
      @bowingtechnique = Bowingtechnique.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def bowingtechnique_params
      params.expect(bowingtechnique: [ :name ])
    end
end
