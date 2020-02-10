class BattlesController < ApplicationController

  before_action :find_battle, only: [:update, :show, :edit, :destroy]

  def index
    @battles=Battle.all
  end

  def show
  end

  def new
    @battle=Battle.new
  end

  def create
    @battle=Battle.create(battle_params)
    if @battle.save
      flash[:success] = "#{self.class.to_s.gsub("sController", "")} saved successfully"
      redirect_to battles_path
    else
      flash[:error] = "#{self.class.to_s.gsub("sController", "")} NOT saved"
      puts @battle.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    @battle.update(battle_params)
    if @battle.save
      flash[:success] = "#{self.class.to_s.gsub("sController", "")} updated successfully"
      redirect_to battle_path(@battle)
    else
      flash[:error] = "#{self.class.to_s.gsub("sController", "")} NOT updated"
      puts @battle.errors.full_messages
      render :edit
    end
  end

  def destroy
    if @battle.destroy
      flash[:success] = "#{self.class.to_s.gsub("sController", "")} deleted successfully"
      redirect_to battles_path
    else
      flash[:error] = "#{self.class.to_s.gsub("sController", "")} NOT deleted"
      puts @battle.errors.full_messages
    end
  end

  private

    def battle_params
      params.require(:battle).permit(:name, :location, :character_id, :movie_id)
    end

    def find_battle
      @battle=Battle.find(params[:id])
    end

end
