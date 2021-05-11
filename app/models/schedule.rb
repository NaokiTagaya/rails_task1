class Schedule < ApplicationRecord
	# バリデーションエラー
	validates :title, presence:true
	validates :startdate, presence: true
	validates :enddate, presence: true
	validate :date_before_start # 終了日に過去日付が入っている場合はエラー
	validate :date_period_wrong # 「終了日<開始日」になっている場合はエラー
	 def date_before_start
		unless enddate == nil # 空ではないのかチェック
			errors.add(:enddate, "は今日以降の日付で選択してください") if enddate < Date.today
		end
	 end
	 def date_period_wrong
		unless enddate == nil # 空ではないのかチェック
			errors.add(:enddate, "は開始日以降の日付で選択してください") if enddate < startdate
		end
	 end
end
