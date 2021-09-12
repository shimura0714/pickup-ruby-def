#!/bin/zsh

DIR="$1" # コマンドライン引数から検索するディレクトリを取得
for filepath in `\find ${DIR} -type f` # 入力からディレクトリをファイルに絞って検索
do
  if [[ ${filepath} =~ '[.]rb$' ]]; then # rubyのファイルか判定
    echo $filepath
    grep -e '^  def ' $filepath >&1
  fi
done
