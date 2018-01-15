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
        * 位於 `src/` 底下的目錄名稱為章節，可以在底下任意加上 markdown 檔案（`檔名即為標題`！）

> 使用了自製的 papoGen，不再需要一個個產生！

# 目錄

## Chapter 1

> 待補上

---

## Chapter 2

> 待補上

---

## Chapter 3 (Matching & factor)

### 新版

* [第三章整理](https://toolbuddy.github.io/Graph-Theory/matching-factor/index.html)

* 重點列表：

    | 名稱 | 重要性 | 備註 |
    | ------ | ------ | ------ |
    | |vertex cover| >= |matching| | 🌟🌟 | 當等號成立時，表示最佳化； 並且在 bipartite 時， 等號成立 |
    | Lemma 3.1.21 | 🌟🌟🌟  | α(G) + β(G) = n(G) | 
    | Theorem 3.1.22 | 🌟🌟🌟 | α'(G) + β'(G) = n(G) |
    | Corollary ( 3.1.21 + 3.1.22 ) | 🌟🌟🌟🌟 | α(G) = β'(G) | 
    | Augmenting Path Algorithm | 🌟🌟🌟🌟🌟 | 產生 `M-augmenting path (maximum matching)` 及 `vertex cover, R = T U (X-S)` |
    | 匈牙利演算法 | 🌟🌟🌟🌟🌟 | 從 weighted bipartite matching 中找出 weight cost 總和最大的 traversal (Assignment Problem)； （e.g. 得到 maximum weight matching 及 minimum cost cover） |
    | Gale-Shapley Proposal Algorithm | 🌟 | 配對問題（擇偶優先序） |
    | factor | 🌟🌟🌟 | 為該圖中的一個 spanning subgraph； 所以當一個圖存在 `k-factor` 時，等同於 `k-regular` subgraph |
    | 2-factor algorithm | 🌟🌟🌟 | Theorem: 每個擁有 **even degree** 的 regular graph，其都會有一個 **2-factor** 的存在  |
    | Corollary of Tutte theorem | 🌟🌟 | 每個 3-regular，且沒有 cut-edge 存在的 graph，擁有 1-factor （perfect matching） | 
    | Factor transformation | 🌟🌟🌟 | f-factor 轉換成 1-factor 的手法 |
    | Edmond's Blossom Algorithm | 🌟🌟 | |

### 舊版
* Hall's Condition
    * [理論推導](https://toolbuddy.github.io/Graph-Theory/matching-factor/hall-condition/)

* α(G) = β'(G)
    * [理解](https://toolbuddy.github.io/Graph-Theory/matching-factor/ind-set-and-edge-cover)

* Tutte's Condition
    * [理論推導](https://toolbuddy.github.io/Graph-Theory/matching-factor/tutte-theorem/)

* 2 factor algorithm
    * [理論推導](https://toolbuddy.github.io/Graph-Theory/matching-factor/2-factor-algo/)

---

## Chapter 4 (Connectivity & path)

* [第四章整理](https://toolbuddy.github.io/Graph-Theory/connectivity-path)

* 重點列表:

    | 名稱 | 重要性 | 備註 |
    | ------ | ------ | ------ |
    | Hypercube | 🌟🌟 | 建構方式、以及性質 | 
    | Harary Graph | 🌟🌟 | 三種變形以及性質 | 
    | ϰ(G) ≤ ϰ'(G) ≤ δ(G)  | 🌟🌟🌟🌟 | G 為 simple graph | 
    | ϰ(G) == ϰ'(G) | 🌟🌟🌟🌟 | G 為 3-regular graph 時 | 
    | edge cut/ vertex cut | 🌟🌟🌟 | S 與 S 補集間的 edge 數量計算 | 
    | bond | 🌟 | | 
    | block | 🌟 | |
    | line graph | 🌟🌟 | edge 縮合而成 vertex 的轉換過程 |
    | **k-connected** 與 **k 條 internally disjoint paths** | 🌟🌟🌟 | 其數量性質；以及 pair of edges 皆於`同個 cycle`上的等價性質 |
    | Menger Theorem | 🌟🌟🌟🌟🌟 | `ϰ(x,y) = λ(x,y)` |
    | Menger Theorem (edge) | 🌟🌟🌟🌟🌟 | `ϰ'(x,y) = λ'(x,y)`, 用 line graph 的性質來做轉換後套用 Menger Theorem! | 
    | connectivity 的性質 | 🌟🌟🌟🌟🌟 | connectivity: `ϰ`; edge-connectivity: `ϰ'` | 
    | ear | 🌟🌟 | open/closed-ear |
    | x,U-fan | 🌟🌟 | |
    | Network flow | 🌟🌟🌟🌟 | f-augmenting path 的定義； flow capacity； maximum flow (e.g. `feasible flow`)的計算 |
    | Max-flow Min-cut | 🌟🌟🌟🌟 | a.k.a `Ford-Fulkerson Theorem` | 


* 小註解區：
    * `k-factor`:
        * 為第三章的名詞，主要表示該 graph 還能夠衍生出幾種 **與原圖不同** 且使用了相同 vertex、 edge set 的圖；
            > k-factor of a graph, is a `k-regular subgraph` of order n
        * 這也解釋為何 ***"perfect matching"*** 為 `1-factor` 的原因
        * 而 cycle 為 `2-factor` 
    * `k-connected`:
        * 而到第四章的部份時，則表示該 graph 在扣除 k 個 vertices 後，將會出現 **disconnect** 的情形 （等價於： 在扣除 `k-1 vertices` 的情況下，不會出現 **disconnect** ）
        * 而從等價的敘述中可以推得以下的特性： 在 connectivity = k 的 graph 中，我們可以稱之為 `1,2, ... k-1`-connected !! （因為都可以符合等價中的敘述！）但反過來的列式則不能成立！（若某 graph 為 k-connected 來推其為 connectivity = k， 這項命題則為 **否**！！）

---