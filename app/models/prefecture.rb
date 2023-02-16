class Prefecture < ActiveHash::Base
  self.data = [
      {id: 1, name: '北海道', theme1: 'グルメ', theme3: 'リゾート', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "hokkaido.jpg", link:"https://www.visit-hokkaido.jp/"},
      {id: 2, name: '青森県', theme5: 'その他',info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "aomori.jpg", link:"https://aomori-tourism.com/"},
      {id: 3, name: '岩手県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "iwate.jpg", link:"https://iwatetabi.jp/"},
      {id: 4, name: '宮城県', theme1: 'グルメ', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "iwate.jpg", link:"https://www.pref.miyagi.jp/site/kankou/"},
      {id: 5, name: '秋田県', theme2: '温泉', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "miyagi.jpg", link:"https://akita-fun.jp/"},
      {id: 6, name: '山形県', theme2: '温泉', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "akita.jpg", link:"https://yamagatakanko.com/"},
      {id: 7, name: '福島県', theme2: '温泉', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "fukushima.jpg", link:"https://www.tif.ne.jp/"},
      {id: 8, name: '茨城県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "ibaragi.jpg", link:"https://www.ibarakiguide.jp/"},
      {id: 9, name: '栃木県', theme2: '温泉', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "tochigi.jpg", link:"https://www.tochigiji.or.jp/"},
      {id: 10, name: '群馬県', theme2: '温泉', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "gunma.jpg", link:"https://gunma-dc.net/"}, 
      {id: 11, name: '埼玉県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "saitama.jpg", link:"https://chocotabi-saitama.jp/"},
      {id: 12, name: '千葉県', theme3: 'リゾート', theme4:'テーマパーク', theme5: 'その他',info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "chiba.jpg", link:"https://maruchiba.jp/"},
      {id: 13, name: '東京都', theme1: 'グルメ', theme4:'テーマパーク', theme5: 'その他',info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "tokyo.jpg", link:"https://www.gotokyo.org/"},
      {id: 14, name: '神奈川県',theme2: '温泉', theme3: 'リゾート', theme4:'テーマパーク', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "kanagawa.jpg", link:"https://www.kanagawa-kankou.or.jp/"},
      {id: 15, name: '新潟県', theme1: 'グルメ', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "niigata.jpg", link:"https://niigata-kankou.or.jp/"},
      {id: 16, name: '富山県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "toyama.jpg", link:"https://www.info-toyama.com/"},
      {id: 17, name: '石川県', theme1: 'グルメ', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "ishikawa.jpg", link:"https://www.hot-ishikawa.jp/"},
      {id: 18, name: '福井県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "fukui.jpg", link:"fuku-e.com"},
      {id: 19, name: '山梨県', theme4:'テーマパーク', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "yamanashi.jpg", link:"https://www.yamanashi-kankou.jp/"},
      {id: 20, name: '長野県', theme3: 'リゾート', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "nagano.jpg", link:"https://www.go-nagano.net/"},
      {id: 21, name: '岐阜県', theme2: '温泉', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "gifu.jpg", link:"https://www.kankou-gifu.jp/"},
      {id: 22, name: '静岡県', theme1: 'リゾート', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "shizuoka.jpg", link:"https://hellonavi.jp/"},
      {id: 23, name: '愛知県', theme1: 'グルメ', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "aichi.jpg", link:"https://www.aichi-now.jp/"},
      {id: 24, name: '三重県', theme4:'テーマパーク', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "mie.jpg", link:"https://www.kankomie.or.jp/"},
      {id: 25, name: '滋賀県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "shiga.jpg", link:"https://www.biwako-visitors.jp/"},
      {id: 26, name: '京都府', theme1: 'グルメ', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "kyoto.jpg", link:"https://www.kyoto-kankou.or.jp/"},
      {id: 27, name: '大阪府', theme1: 'グルメ', theme4:'テーマパーク', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "osaka.jpg", link:"https://osaka-info.jp/"},
      {id: 28, name: '兵庫県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "hyogo.jpg", link:"https://www.hyogo-tourism.jp/"},
      {id: 29, name: '奈良県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "nara.jpg", link:"http://yamatoji.nara-kankou.or.jp/"},
      {id: 30, name: '和歌山県', theme2: '温泉', theme3: 'リゾート', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "wakayama.jpg", link:"https://www.wakayama-kanko.or.jp/"},
      {id: 31, name: '鳥取県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "tottori.jpg", link:"https://www.tottori-guide.jp/"},
      {id: 32, name: '島根県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "shimane.jpg", link:"https://www.kankou-shimane.com/"},
      {id: 33, name: '岡山県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "okayama.jpg", link:"https://www.okayama-kanko.jp/"},
      {id: 34, name: '広島県', theme1: 'グルメ', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "hiroshima.jpg", link:"https://dive-hiroshima.com/"},
      {id: 35, name: '山口県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "yamaguchi.jpg", link:"https://yamaguchi-tourism.jp/"},
      {id: 36, name: '徳島県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "tokushima.jpg", link:"https://www.awanavi.jp/"},
      {id: 37, name: '香川県', theme1: 'グルメ', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "kagawa.jpg", link:"https://www.my-kagawa.jp/"},
      {id: 38, name: '愛媛県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "ehime.jpg", link:"https://www.iyokannet.jp/"},
      {id: 39, name: '高知県', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "kochi.jpg", link:"https://kochi-tabi.jp/"},
      {id: 40, name: '福岡県', theme1: 'グルメ', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "fukuoka.jpg", link:"https://www.crossroadfukuoka.jp/"},
      {id: 41, name: '佐賀県', theme2: '温泉', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "saga.jpg", link:"https://www.asobo-saga.jp/"},
      {id: 42, name: '長崎県', theme4:'テーマパーク', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "nagasaki.jpg", link:"https://www.nagasaki-tabinet.com/"},
      {id: 43, name: '熊本県', theme1: 'グルメ', theme2: '温泉', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "kumamoto.jpg", link:"https://kumamoto.guide/"},
      {id: 44, name: '大分県', theme2: '温泉', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "oita.jpg", link:"https://www.visit-oita.jp/"},
      {id: 45, name: '宮崎県', theme3: 'リゾート', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "miyazaki.jpg", link:"http://www.kanko-miyazaki.jp/"},
      {id: 46, name: '鹿児島県', theme1: 'グルメ', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "kagoshima.jpg", link:"https://www.kagoshima-kankou.com/"},
      {id: 47, name: '沖縄県', theme3: 'リゾート', theme5: 'その他', info: "テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト", image: "okinawa.png", link:"https://www.okinawastory.jp/"}
    ]

  include ActiveHash::Associations
  has_many :destinations

  has_many :user_prefectures
  has_many :users, through: :user_prefectures
  
  end