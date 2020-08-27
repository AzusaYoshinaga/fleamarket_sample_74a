# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lady = Category.create(name: "ladies", ancestry: nil)
  ladies_tops = lady.children.create({name: "トップス"})
    ladies_tops.children.create([
                            {name: "Tシャツ/カットソー(半袖/袖なし)"},
                            {name: "Tシャツ/カットソー(七分/長袖)"},
                            {name: "シャツ/ブラウス(半袖なし)"},
                            {name: "シャツ/ブラウス(七分/長袖)"},
                            {name: "ポロシャツ"},
                            {name: "キャミソール"},
                            {name: "タンクトップ"},
                            {name: "フォルターネック"},
                            {name: "ニット/セーター"},
                            {name: "チュニック"},
                            {name: "カーディガン/ボレロ"},
                            {name: "アンサンブル"},
                            {name: "ベスト/ジレ"}
                            ])
  ladies_jacket = lady.children.create({name: "ジャケット/アウター"})
    ladies_jacket.children.create([
                            {name: "テーラードジャケット"},
                            {name: "ノーカラージャケット"},
                            {name: "Gジャン/デニムジャケット"},
                            {name: "レザージャケット"},
                            {name: "ダウンジャケット"},
                            {name: "ライダースジャケト"},
                            {name: "ミリタリージャケット"},
                            {name: "ダウンベスト"},
                            {name: "ジャンバー/ブルゾン"},
                            {name: "ポンチョ"},
                            {name: "ロングコート"},
                            {name: "トレンチコート"},
                            {name: "ダッフルコート"},
                            {name: "ピーコート"}
                          ])
  ladies_pants = lady.children.create({name: "パンツ"})
    ladies_pants.children.create([
                            {name: "デニム/ジーンズ"},
                            {name: "ショートパンツ"},
                            {name: "カジュアルパンツ"},
                            {name: "ハーフパンツ"},
                            {name: "チノパンツ"},
                            {name: "ワークパンツ/カーゴパンツ"},
                            {name: "クロップドパンツ"},
                            {name: "サロペット/オーバーオール"},
                            {name: "オールインワン"},
                            {name: "サルエルパンツ"},
                            {name: "ガチョウパンツ"},
                            {name: "その他"}
                          ])
  ladies_skirts = lady.children.create({name: "スカート"})
    ladies_skirts.children.create([
                            {name: "ミニスカート"},
                            {name: "ひざ丈スカート"},
                            {name: "ロングスカート"},
                            {name: "キュロット"},
                            {name: "その他"}
                           ])
  ladies_onepiece = lady.children.create({name: "ワンピース"})
    ladies_onepiece.children.create([
                            {name: "ミニワンピース"},
                            {name: "ひざ丈ワンピース"},
                            {name: "ロングワンピース"},
                            {name: "その他"}
                           ])

  ladies_shose = lady.children.create({name: "靴"})
      ladies_shose.children.create([
                            {name: "ハイヒール/パンプス"}, 
                            {name: "ブーツ"},
                            {name: "サンダル"}, 
                            {name: "スニーカー"},
                            {name: "ミュール"},     
                            {name: "モカシン"},     
                            {name: "ローファー/革靴"},      
                            {name: "フラットシューズ/バレエシューズ"},     
                            {name: "長靴/レインシューズ"},      
                            {name: "その他"}
                            ])

  ladies_roomwears = lady.children.create({name: "ルームウェア/パジャマ"})
    ladies_roomwears.children.create([
                            {name: "パジャマ"},
                            {name: "ルームウェア"}
                            ])
  ladies_legwears = lady.children.create({name: "レッグウェア"})
    ladies_legwears.children.create([
                            {name: "ソックス"},
                            {name: "スパッツ/レンギンス"},
                            {name: "ストッキング/タイツ"},
                            {name: "レッグウォーマー"},
                            {name: "その他"}
                            ])
  ladies_hats= lady.children.create({name: "帽子"})
    ladies_hats.children.create([
                            {name: "ニットキャップ/ビーニー"},
                            {name: "ハット"},
                            {name: "ハンチング/ベレー帽"},
                            {name: "キャップ"},
                            {name: "麦わら帽子"},
                            {name: "その他"}
                            ])



                          

                            

                            
                            








