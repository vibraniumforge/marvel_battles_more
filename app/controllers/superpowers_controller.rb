class SuperpowersController < ApplicationController

  before_action :find_superpower, only: [:update, :show, :edit, :delete]

  def index
    @superpowers = Superpower.all
  end

  def show
  end

  def new
    @superpower=Superpower.new
  end

  def create
    @superpower=Superpower.new
    if @superpower.save
      flash[:success] = "Superpower saved successfully."
      redirect_to superpower_path(@superpower)
    else
      flash[:error] = "Superpower NOT saved"
      puts @superpower.errors.full_messages 
      render :new
    end
  end

  def edit
  end

  def update
    @superpower.update(superpower_params)
    if @superpower.save
      flash[:success] = "Superpower updated successfully."
      redirect_to superpower_path(@superpower)
    else
      flash[:error] = "Superpower NOT updated"
      puts @superpower.errors.full_messages 
      render :edit
    end
  end

  def destroy
    @superpower.destroy
    redirect_to superpowers_path
  end

  private

    def superpower_params
      params.require(:superpower).permit(:name)
    end

    def find_superpower
      @superpower=Superpower.find(params[:id])
    end

end
