#勝ち負け数を管理するための Team クラスを作成して、インスタンスを6チーム分生成した後に各チームの勝ち負け数を表示するプログラム

#Teamクラスの定義
class Team
  attr_accessor :name, :win, :lose, :draw
  
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  
  #勝率を返すメソッド
  def calc_win_rate
    self.win.to_f / (self.win + self.lose).to_f
  end
  
  #チームの成績を標準出力するメソッド
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate}です。"
  end
end
  
#各チームのインスタンスの作成
#引数：名前、勝ち、負け、引き分け
giants = Team.new("Giants", 67, 45, 8)
tigers = Team.new("Tigers", 60, 53, 7)
dragons = Team.new("Dragons", 60, 55, 5)
baystars = Team.new("BayStars", 56, 58, 6)
carp = Team.new("Carp", 52, 56, 12)
swallows = Team.new("Swallows", 41, 69, 10)

#勝敗情報の表示
giants.show_team_result
tigers.show_team_result
dragons.show_team_result
baystars.show_team_result
carp.show_team_result
swallows.show_team_result