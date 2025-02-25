class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @instructions_array = @recipe.instructions.split('.')
    @ingredients_array = @recipe.ingredients.tr('[','').tr(']','').tr("'",'').split(',')
    if user_signed_in?
      @user = User.find(current_user.id)
    end
  end
  
  
  
  
  
  
  
  def favorite
    user = User.find(current_user.id)
    recipe = Recipe.find(params[:id])
    @recipe = Recipe.find(params[:id])
    @instructions_array = recipe.instructions.split('.')
    @ingredients_array = recipe.ingredients.tr('[','').tr(']','').tr("'",'').split(',')
    @user = User.find(current_user.id)
    user.favorite(recipe)
  end
  
  def unfavorite
    user = User.find(current_user.id)
    recipe = Recipe.find(params[:id])
    @recipe = Recipe.find(params[:id])
    @instructions_array = recipe.instructions.split('.')
    @ingredients_array = recipe.ingredients.tr('[','').tr(']','').tr("'",'').split(',')
    @user = User.find(current_user.id)
    user.unfavorite(recipe)
  end
  
  
  
  
  
  
  
  def breakfast
    breakfast = []
    for recipe in Recipe.all
      if recipe.types == "bre"
        breakfast.append(recipe)
      end
    end
    @recipes = breakfast
  end
  
  
  def lunch
    lunch = []
    for recipe in Recipe.all
      if recipe.types == "lun"
        lunch.append(recipe)
      end
    end
    @recipes = lunch
  end
  
  def dinner
    dinner = []
    for recipe in Recipe.all
      if recipe.types == "din"
        dinner.append(recipe)
      end
    end
    @recipes = dinner
  end
  
  def desert
    desert = []
    for recipe in Recipe.all
      if recipe.types == "des"
        desert.append(recipe)
      end
    end
    @recipes = desert
  end
  
  def snack
    snack = []
    for recipe in Recipe.all
      if recipe.types == "sna"
        snack.append(recipe)
      end
    end
    @recipes = snack
  end
  
  
  
  
  
  
  
  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
  end
  
  def toggle
    @test = "hello"
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe_params
      params.require(:recipe).permit(:name, :types, :restrictions, :time, :yield, :ingredients, :instructions, :image, :link, :make, :make_by)
    end
    
    helper_method :toggle
end
