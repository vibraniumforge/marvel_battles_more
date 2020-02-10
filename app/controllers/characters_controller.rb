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
    @character = Character.create(character_params)
    params[:character][:superpower_ids].each do |superpowerId|
      if superpowerId.present?
        CharacterSuperpower.create(character_id: @character.id, superpower_id: superpowerId.to_i)
      end
    end
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
      @new_superpower_id_array = []
      params[:character][:superpower_ids].each do |sid|
        if sid != ""
          @new_superpower_id_array << sid.to_i
        end
      end
      @existing_superpower_ids = @character.superpowers.distinct.pluck("id")
      @new_superpower_id_array.each do |superpowerId|
        if superpowerId.present? && @existing_superpower_ids.exclude?(superpowerId)
          CharacterSuperpower.create(character_id: @character.id, superpower_id: superpowerId.to_i)
        end
      end
      @existing_superpower_ids.each do |esi|
        if @new_superpower_id_array.exclude?(esi)
          CharacterSuperpower.delete(CharacterSuperpower.where(character_id: @character.id, superpower_id: esi))
        end
      end
      flash[:success] = "Character updated successfully"
      redirect_to character_path(@character)
    else
      flash[:error] = "Character NOT updated"
      puts @character.errors.full_messages
      render :edit
    end
  end

  def destroy
    if @character.destroy
      flash[:success] = "Character deleted successfully"
      redirect_to characters_path
    else
      flash[:error] = "Character NOT deleted"
      puts @character.errors.full_messages
    end
  end

  private

    def character_params
      params.require(:character).permit(:name, :alias, superpowers_attributes:[])
    end

    def find_character
      @character=Character.find(params[:id])
    end

end
