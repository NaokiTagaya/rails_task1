class PostsController < ApplicationController
  # トップ画面
  def top
  end
  # スケジュール一覧画面
  def index
    @schedules = Schedule.all
  end

  # スケジュール新規登録画面
  def new
    @schedule = Schedule.new
  end
  # スケジュール新規作成処理
  def create
  end
  # スケジュール確認画面
  def show
  end
  # スケジュール編集画面
  def edit
  end
  # スケジュール更新処理
  def update
  end
  # スケジュール削除処理
  def destroy
  end
end
