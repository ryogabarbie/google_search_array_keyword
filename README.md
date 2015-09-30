# google_search_array_keyword
配列の要素をgoogle検索しますw


strに渡された改行区切りの文字列をgoogle-search-apiを使って検索し、結果をresults.txtに書き込みます。

ruby google_search_array_keyword.rbで実行されます。

strに渡された文字列の区切りが改行ではなく,(カンマ)や他の区切り文字のの場合はgsubの第二引数を適切な区切り文字に変更してください。
文字列と一緒に検索した語がある場合は :query => keyword の部分を　:query => keyword + " 検索したい言葉"のようにすることで、
"山田 たけし"　"佐藤 たけし"のような検索が可能です。

デフォルトではgoogleの検索結果の10個が書き込まれますが、break if i == 10 の数字を変えれば任意の検索数に変えれます。


ここは str = str.gsub(/(\r\n|\r|\n|\f)/,",").split(",")
splitだけでも可能ですが、一応念のためgsubとsplitを両方使ってます。
