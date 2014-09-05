#! /bin/bash

read -p "請輸入一個字: " ch

case $ch in

  [0-9]) echo "數字" ;;&
  [[:lower:]]) echo "小寫" ;;&
  [[:upper:]]) echo "大寫" ;;&
  *) echo "任意字元" ;;
esac

echo
