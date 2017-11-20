#!/usr/bin/env ruby

## 初期化
array = []

## 追加
array << "element"
array.push("element")

## 取り出す
array.shift # 先頭
array.pop # 末尾

## ソートする(昇順)
array.sort!

## ソートする(降順)
array.sort!{ |a, b| b <=> a }
