class LefthandtechniquesController < ApplicationController
  before_action :set_lefthandtechnique, only: %i[ show edit update destroy ]

  # GET /lefthandtechniques or /lefthandtechniques.json
  def index
    @lefthandtechniques = Lefthandtechnique.all
  end

  # GET /lefthandtechniques/1 or /lefthandtechniques/1.json
  def show
  end

  # GET /lefthandtechniques/new
  def new
    @lefthandtechnique = Lefthandtechnique.new
  end

  # GET /lefthandtechniques/1/edit
  def edit
  end

  # POST /lefthandtechniques or /lefthandtechniques.json
  def create
    @lefthandtechnique = Lefthandtechnique.new(lefthandtechnique_params)

    respond_to do |format|
      if @lefthandtechnique.save
        format.html { redirect_to @lefthandtechnique, notice: "Lefthandtechnique was successfully created." }
        format.json { render :show, status: :created, location: @lefthandtechnique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lefthandtechnique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lefthandtechniques/1 or /lefthandtechniques/1.json
  def update
    respond_to do |format|
      if @lefthandtechnique.update(lefthandtechnique_params)
        format.html { redirect_to @lefthandtechnique, notice: "Lefthandtechnique was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @lefthandtechnique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lefthandtechnique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lefthandtechniques/1 or /lefthandtechniques/1.json
  def destroy
    @lefthandtechnique.destroy!

    respond_to do |format|
      format.html { redirect_to lefthandtechniques_path, notice: "Lefthandtechnique was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lefthandtechnique
      @lefthandtechnique = Lefthandtechnique.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def lefthandtechnique_params
      params.expect(lefthandtechnique: [ :name ])
    end
end
