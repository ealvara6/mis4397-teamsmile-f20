class BreakfastRecipesController < ApplicationController
  before_action :set_breakfast_recipe, only: [:show, :edit, :update, :destroy]

  # GET /breakfast_recipes
  # GET /breakfast_recipes.json
  def index
    @breakfast_recipes = BreakfastRecipe.all
  end

  # GET /breakfast_recipes/1
  # GET /breakfast_recipes/1.json
  def show
  end

  # GET /breakfast_recipes/new
  def new
    @breakfast_recipe = BreakfastRecipe.new
  end

  # GET /breakfast_recipes/1/edit
  def edit
  end

  # POST /breakfast_recipes
  # POST /breakfast_recipes.json
  def create
    @breakfast_recipe = BreakfastRecipe.new(breakfast_recipe_params)

    respond_to do |format|
      if @breakfast_recipe.save
        format.html { redirect_to @breakfast_recipe, notice: 'Breakfast recipe was successfully created.' }
        format.json { render :show, status: :created, location: @breakfast_recipe }
      else
        format.html { render :new }
        format.json { render json: @breakfast_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /breakfast_recipes/1
  # PATCH/PUT /breakfast_recipes/1.json
  def update
    respond_to do |format|
      if @breakfast_recipe.update(breakfast_recipe_params)
        format.html { redirect_to @breakfast_recipe, notice: 'Breakfast recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @breakfast_recipe }
      else
        format.html { render :edit }
        format.json { render json: @breakfast_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breakfast_recipes/1
  # DELETE /breakfast_recipes/1.json
  def destroy
    @breakfast_recipe.destroy
    respond_to do |format|
      format.html { redirect_to breakfast_recipes_url, notice: 'Breakfast recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breakfast_recipe
      @breakfast_recipe = BreakfastRecipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def breakfast_recipe_params
      params.require(:breakfast_recipe).permit(:title, :total_time, :yields, :ingredients, :image, :host)
    end
end
