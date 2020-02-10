class CharactersController < ApplicationController

  before_action :find_character, only: [:update, :show, :edit, :destroy]

  def index
    @characters=Character.all
  end

  def show
  end

  def new
    @character=Character.new
  end

  def create
    @character=Character.create(character_params)
    if @character.save
      flash[:success] = "Character saved successfully"
      redirect_to characters_path
    else
      flash[:error] = "Character NOT saved"
      puts @character.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @character.update(character_params)
      flash[:success] = "Character updated successfully"
      redirect_to character_path(@character)
    else
      flash[:error] = "Character NOT updated"
      puts @character.errors.full_messages
      render :edit
    end
  end

  def destroy
    @character.destroy
    redirect_to characters_path
  end

  private

    def character_params
      params.require(:character).permit(:name, :alias, superpowers_attributes:[])
    end

    def find_character
      @character=Character.find(params[:id])
    end

end
