# Chartkick.options = {
#   donut: true,  # ドーナツグラフにするための記述
#   colors: ["#b00", "#666"],  # 色を指定
#   label: "都道府県数",  # ホバーした時に表示される詳細の項目名を指定
#   legend: false, # 凡例非表示
#   library: {
#     title: {
#       text: "#{@user_histories}/47",  # 中央(ドーナツの穴)部分の記述を指定
#       align: 'center',  # 位置を指定（水平方向）
#       verticalAlign: 'middle'  # 位置を指定（垂直方向）
#     },
#     plotOptions: {
#       pie: {
#         dataLabels: {
#           enabled: false,  #データラベルを表示するか否か
#         },
#         innerSize: '60%',  # 中央(ドーナツの穴)部分のサイズを指定
#       }
#     },
#   }
# }