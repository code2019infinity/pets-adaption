class AnimalsController < ApplicationController
  before_action :authenticate_user!,except: [:index, :show]
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  # GET /animals
  # GET /animals.json
  def index
    @animals = Animal.all
    if current_user
      @animals = Animal.all
    end

  end

  # GET /animals/1
  # GET /animals/1.json
  def show
    @comment = Comment.new
  end

  # GET /animals/new
  def new
    @animal = Animal.new
  end

  # GET /animals/1/edit
  def edit
  end

  # POST /animals
  # POST /animals.json
  def create
    @animal = Animal.new(animal_params)

    respond_to do |format|
      if @animal.save
        format.html { redirect_to root_path, notice: 'تم إضافة الطلب بنجاح' }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animals/1
  # PATCH/PUT /animals/1.json
  def update
    puts "\n\n\n\n *****" ,  @animal.user_id , current_user.id
    if ( @animal.user_id === current_user.id) 
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal, notice: 'تم تعديل الطلب بنجاح' }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  else 
    redirect_to animals_path
  end 
  end

  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    if(@animal.user_id  === current_user.id) 
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to animals_url, notice: 'تم حذف الطلب بنجاح ' }
      format.json { head :no_content }
    end
  else 
    redirect_to animals_path
  end 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:category, :description, :location, :adapted,:image, :comment, :user_id, :title)
    end
end
