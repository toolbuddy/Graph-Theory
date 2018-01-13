# Graph-Theory
Notes/Implementation for course - graph theory. 

# 教學使用
* 目前由成功大學的圖形理論為主軸做紀錄與整理
    * 目前挑選較難、重點部份做整理
    * 未來有機會希望增加原始碼實作，藉此透過原始碼來分析時間複雜度、取代以往只看虛擬碼望梅止渴
* 希望透過 `費曼學習法` 來讓理解更加清晰、務實，而非虛懂、硬背
* 如果發現有誤、或是有需要補充之處，歡迎 fork 做修正、或是直接開啟 issue 反應給我，謝謝！

# 使用
* 主要使用 markdown to html 格式做教學頁面
* 系統需求
    * (`Optional`)GNU make
        * 也可以直接運行 Makefile 內的腳本
    * node.js
    * npm 套件：以 [`papogen`](https://github.com/toolbuddy/papoGen) 為主 (版本：`v0.0.18`)
        * 解決原本單檔轉換、圖源無法使用本地端的問題
* 檔案結構
    * `docs/`: 輸出的網站放置位置
    * `res/`: 放置 local 端圖片使用（for markdown 使用）
    * `src/`: 轉換來源依據，放置有 markdown 格式檔案；並再使用 papogen 後，能夠一次性轉換多個檔案；可以在 Makefile 中看到與以往轉換工具上的差異！

# 目錄

## Chapter 1

## Chapter 2

## Chapter 3

### 新版

* [第三章整理](https://toolbuddy.github.io/Graph-Theory/matching-factor/index.html)

### 舊版
* Hall's Condition
    * [理論推導](https://toolbuddy.github.io/Graph-Theory/matching-factor/hall-condition/)

* α(G) = β'(G)
    * [理解](https://toolbuddy.github.io/Graph-Theory/matching-factor/ind-set-and-edge-cover)

* Tutte's Condition
    * [理論推導](https://toolbuddy.github.io/Graph-Theory/matching-factor/tutte-theorem/)

* 2 factor algorithm
    * [理論推導](https://toolbuddy.github.io/Graph-Theory/matching-factor/2-factor-algo/)

## Chapter 4

> 使用了自製的 papoGen，不再需要一個個產生！

* [第四章整理](https://toolbuddy.github.io/Graph-Theory/connectivity-path)