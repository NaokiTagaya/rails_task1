class SchedulesController < ApplicationController

    # スケジュール一覧画面
  def index
    @schedules = Schedule.all
    @recordcount = Schedule.count
  end

  # スケジュール新規登録画面
  def new
    @schedule = Schedule.new
  end

  # スケジュール新規作成処理
  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :startdate, :enddate, :alldayflg, :memo))
    if @schedule.save
      flash[:notice] = "スケジュールを新規登録しました"
      redirect_to :schedules
    else
      flash.now[:notice] = "スケジュールを登録できませんでした"
      render "new"
    end
  end

  # スケジュール確認画面
  def show
    @schedule = Schedule.find(params[:id])
  end

  # スケジュール編集画面
  def edit
    @schedule = Schedule.find(params[:id])
  end

  # スケジュール更新処理
  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :startdate, :enddate, :alldayflg, :memo))
      flash[:notice] = "スケジュールを更新しました"
      redirect_to :schedules
    else
      flash.now[:notice] = "スケジュールを更新できませんでした"
      render "edit"
    end
  end

  # スケジュール削除処理
  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :schedules
  end

  private
    def sort_params
      params.permit(:sort)
    end
end
