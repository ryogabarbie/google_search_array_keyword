# -*- coding: utf-8 -*-
require 'google-search'

str = "佐藤
鈴木
高橋
田中
伊藤
山本
渡辺
中村
小林
加藤"

str = str.gsub(/(\r\n|\r|\n|\f)/,",").split(",")

File.open 'results.txt' , 'a' do |f|
  str.each do |keyword|
    i = 0
    f.write keyword + "\n"
    Google::Search::Web.new(:query => keyword).each do |item|
      f.write item.title + "\n"
      f.write item.uri + "\n\n"
      i = i + 1
      break if i == 10
    end
    f.write "\n\n\n"
  end
end
