# Graph-Theory
Notes/Implementation for course - graph theory. 

## 編寫者
* Kevin Cyu (2017/9~2018/1)

# 教學使用
* 目前由成功大學的圖形理論為主軸做紀錄與整理
    * 目前挑選較難、重點部份做整理
    * 未來有機會希望增加原始碼實作，藉此透過原始碼來分析時間複雜度、取代以往只看虛擬碼望梅止渴
* 希望透過 `費曼學習法` 來讓理解更加清晰、務實，而非虛懂、硬背
* 如果發現有誤、或是有需要補充之處，歡迎 fork 做修正、或是直接開啟 issue 反應給我，謝謝！

### 項目

* [Chapter 1](#chapter-1-basic-introduction-of-graph)
* [Chapter 2](#chapter-2-tree--distance)
* [Chapter 3](#chapter-3-matching--factor)
* [Chapter 4](#chapter-4-connectivity--path)

# 使用
* 主要使用 markdown to html 格式做教學頁面
* 系統需求
   * GNU make (`Optional`)
   * node.js ( 版本 > v`9.1` )
   * npm 套件：以 [`papogen`](https://github.com/toolbuddy/papoGen) 為主 (版本：`v0.0.18`)
        * 解決原本單檔轉換、圖源無法使用本地端的問題
* 檔案結構
    * `docs/`: 輸出的網站放置位置
    * `res/`: 放置 local 端圖片使用（for markdown 使用）
    * `src/`: 轉換來源依據，放置有 markdown 格式檔案；並再使用 papogen 後，能夠一次性轉換多個檔案；可以在 Makefile 中看到與以往轉換工具上的差異！
        * 位於 `src/` 底下的目錄名稱為章節，可以在底下任意加上 markdown 檔案（`檔名即為標題`！）

* 撰寫方式：
    * 統一由 `markdown` 做編寫
    * 以 **github style** 為主

* 編譯產生網站：
    * 在專案根目錄下 `make` 即可！
    * 會透過 `papogen` 這個工具來做 markdown -> html 的過程！
    * 所產生的結果會在 `docs/` 資料夾當中

> 使用了自製的 papoGen，不再需要一個個產生！

# 目錄

## Chapter 1 (Basic Introduction of Graph)

* [第一章整理](https://toolbuddy.github.io/Graph-Theory/basic-graph/index.html)

 | 名稱 | 重要性 | 備註 |
 | ------ | ------ | ------ |
 | simple graph | 🌟 | 沒有 loops 或是 multiple edges 的 graph |
 | complement of graph | 🌟 | 理解何謂 "圖的補集" |
 | bipartite graph | 🌟🌟🌟 | bipartite 性質 |
 | clique | 🌟 | complete bipartite graph |
 | independent set | 🌟 | e.g. stable set；在該集合內，任何 elements 之間都沒有相連結的 edges（沒有 adjacent vertices） |
 | chromatic number | 🌟🌟🌟 | 使用最少顏色來為所有的 vertices 上色，且 adjacent 的兩兩 vertices 不得相同 |
 | path | 🌟🌟 | 為一連串 vertices 所串接而成，以 <v0,v1,...,vk> 表示；而其中任兩個編號連續的 vertex 皆為 `adjacent`，並以 v0, vk 作為其 end point (start and end) |
 | cycle | 🌟🌟 | 為一連串 vertices 所串接而成，以 <v0,v1,...,vk,**v0**> 表示； 可以從串接上看到，會回到當初的出發點！並且在 cycle 的串接列中，不會出現*重複的 vertices*! |
 | subgraph | 🌟🌟 | 若稱 A 為 G 的 subgraph，則代表 V(A) 為 V(G) 的子集合（V 為 vertex 集合的意思）；除此之外， edge 集合也是相同的關係！ 因此我們也可以稱其關係為 "**G contains A**" |
 | connected graph | 🌟 | 所有 vertices 的 pair 皆可被一條 *path* 所包含，否則稱其為 `disconnect`! |
 | loopless graph | 🌟 | |
 | Adjacency Matrix: A(G) | 🌟🌟 | 為 `n-by-n`（因為是點對點關係，所以必為 n-to-n !） 的 matrix； 其中 a[i][j] 表示在 G 中 endpoints 為 { vi,vj } 兩點之間 edge 的個數 |
 | Incident matrix: M(G) | 🌟🌟 | 為 `n-by-m` 的 matrix，當 entry m[i][j] 為 1 時，表示 edge "**ej**" 的 endpoint 其中一點為 "**vi**" ，否則為 0 |
 | **Isomorphism** | 🌟🌟🌟 |  |
 | bijection | 🌟🌟 | |
 | complete graph | 🌟 | 其 graph 內每個 vertices 兩兩間互為 adjacent |
 | self-complementary | 🌟 | 若和自己的 complement 互為 isomorphic 的話則稱之 |
 | decomposition | 🌟🌟 | 為一連串 subgraph，每條 edge 剛好出現其中一個 subgraph 當中！ |
 | Petersen Graph | 🌟🌟 | |
 | girth | 🌟🌟 | 為 graph 中最短的 cycle 之長度（若該圖沒有 cycle，則其 girth 為 infinite） |
 | automorphism | 🌟🌟 | 自己是自己的 isomorphism 則可稱之 |
 | walk | 🌟🌟 | 為一連串 vertices, edges 所組合的串列： { v0,e1,v1,...ek,vk }, 1<= i <= k, ei 是位於 vi-1 及 vi 中間的 edge（walk 可以重複走 edge!） |
 | trail | 🌟🌟 | 便是 walk 中沒有任何重複 edge 的子集！ |
 | `u,v-walk` , `u,v-trail` | 🌟🌟 | 則表示此條並非 close，並且 endpoint 為 u (first),v(last) |
 | `u,v-path` | 🌟🌟 | 則為一條 path 其 degree 為 1 的 vertice 為 u,v；其餘的則為 internal vertices（**而 path 則為最短路徑！無重複點**） |
 | walk,trail,path,cycle | 🌟🌟 | 這些長度計算*來自其中 edge 個數*；而當 walk, trail 的 endpoints 為同一個 vertex， 則可稱其為 `closed` |
 | walk & path | 🌟🌟 | Every `u,v-path` 包含 `u,v-path` | 
 | components | 🌟🌟 | 圖 G 的 components 為其 maximal connected subgraphs； 一個 maximal connected subgraph 是為一個 connected、同時也不包含在其他 subgraph 之中的 subgraph； 若該 component 沒有任何的 edge，則稱之為 `trivial`； 並且存在性質： **每個擁有 n 個 vertices、k 條 edges 的 graph，其至少含有 n-k 個 component!** |
 | isolated vertex | 🌟🌟 | degree 為 0 的 vertex |
 | cut-edge/cut-vertex | 🌟🌟 | 表示著該 vertex/edge 若被刪除後，該 graph 之 **component 數量會增加**時稱之； Cut-Edge 表示法： `G-e`: 從 G 中刪掉一條 edge、`G-M`: 從 G 中刪除一個 *edge 集合*； Cut-Vertex 表示法： `G-v`: 從 G 之中刪除一個 vertex、 `G-S` 則是從 G 當中刪除一個 *vertices 集合* |
 | Induced Subgraph: G[T] | 🌟🌟 | 其 vertex 集合 T, T 屬於 G 的 vertex 集合，且其所有 edge 的 endpoints 皆包含於 T 之中 ( e.g. 點集合決定，則邊集合也取決於此點集合而同時被決定 ) |
 | Eulerian | 🌟🌟 | 若一個 graph 為 Eulerian，則其擁有一個 `closed trail`，其包含所有 edges |
 | circuit | 🌟🌟 | 為一個 `closed trail` 的 list，我們**不去指定哪個 vertex 作為第一個起始 vertex**，但是保留 list 內呈現一個 cyclic order |
 | Eulerian circuit/trail | 🌟🌟 | 若 graph 有這個性質，則可稱該 graph 有個 circuit/trail 包含該 graph 所有 edges |
 | maximal,maximum | 🌟🌟 | maximal: 表示一個 set 在條件下無法再擴大； maximum: 表示一個數值達最大； maximal != maximum |
 | degree, d(v) | 🌟🌟 | 為一個 vertex 上所有連著的 edge 數量 |
 | Maximum degree | 🌟 | Δ(G) | 
 | Minimum degree | 🌟 | δ(G) |
 | Δ(G) = δ(G) | 🌟🌟🌟 | 表示 G 為 regular |
 | k-regular | 🌟🌟 | 當 graph 中的 common degree 為 k 時稱之 |
 | N(v) | 🌟 | v 為 vertex， N(v) 表示所有 v 的鄰居集合 |
 | order | 🌟🌟 | 標記為 **n(G)** ，其代表 G 的所有 vertices 數量，稱為 *order* |
 | size | 🌟🌟 | 標記為 **e(G)** ，其代表 G 的所有 edges 數量，稱為 *size*  |
 | ∑ d(v) = 2*e(G) | 🌟🌟🌟 | |
 | Δ(G) >= `2*e(G)/n(G)` >= δ(G) | 🌟🌟🌟🌟 | 2*e(G)/n(G) 為一個 graph G 中平均的 vertex degree |
 | degree sequence | 🌟🌟 | 為一串 vertex degree 的串列，通常用 non-increasing 的排序 |
 | graphic sequence | 🌟🌟 | 為一串 simple graph 的 degree sequence 的 nonnegative 數字的串列 |
 | directed graph(digraph) | 🌟🌟🌟 | u->v, u,v 為 vertex； 箭頭尾巴的 u 稱之為 first vertex(`tail`), 箭頭尖端的 v 稱之為 second vertex(`head`) | 
 | underlying graph | 🌟 | 為原**有向圖**之`無向圖`之版本 |
 | Multiple edges | 🌟 | 為一串擁有相同 ordered pair 之 endpoints 的 edges（e.g. u 到 v 之間有多條 edges 做連結） |
 | simple digraph | 🌟 | 該 graph 中不存在 multiple edges 的狀態；且一個 loop 可以貫穿每個 vertices |
 | weakly connected | 🌟🌟 | 當 underly graph 為 connected 時 |
 | strongly connected | 🌟🌟 | 當每個 ordered pair `u,v`（屬於 graph 內 vertex set），皆有一條 path 在 `u,v` 之中 (from `u` to `v`) |
 | (digraph) out/in-degree | 🌟🌟 | outdegree: `d+(v)`，為以 v 為 tail 之 edge 數量； indegree: `d-(v)`，為以 v 為  head 之 edge 數量 |
 | (digraph) out/in-neighborhood | 🌟🌟 | out-neighborhood(successor set): `N+(v)` 為 v-> x 規則下所有能觸及的 x 集合； in-neighborhood(predecessor set): `N-(v)` 為 x->v 規則下所有能觸及的 x 集合 |
 | (digraph) minimum/maximum `in`degree | 🌟🌟 | δ-(G): minimum indegree , Δ-(G): maximum indegree |
 | (digraph) minimum/maximum `out`degree | 🌟🌟 | δ+(G): minimum outdegree , Δ+(G): maximum outdegree |
 | orientation | 🌟🌟🌟 | Graph G 的 orientation 為一 digraph `D` 取自  G，利用任兩個 vertices: `x,y` 中選擇一個方向 (x->y or y->x)，為每條 edge: xy 屬於 E(G) |
 | oriented graph | 🌟🌟🌟🌟 | 為 simple graph 之 orientation |
 | **tournament** | 🌟🌟🌟 | 為 complete graph 的 orientation |
 | **king** | 🌟🌟🌟 | 在一個 digraph 中，若一個 vertex 到其他 vertex 之距離(e.g. `path length`)最多為 2 時稱之； 具有性質：*Every `tournament` 皆有一個 king* |
 
> 剩餘 theorem 的思路
---

## Chapter 2 (Tree & Distance)

* [第二章整理](https://toolbuddy.github.io/Graph-Theory/tree-distance/index.html)

* 值得一看：
    * [Cayley Theorem 推導過程](pdf/Cayley-Theorem.pdf), 整理的簡單筆記也紀錄於上方第2章整理的連結當中！

> 待補上

---

## Chapter 3 (Matching & factor)

### 新版

* [第三章整理](https://toolbuddy.github.io/Graph-Theory/matching-factor/index.html)

* 重點列表：

 | 名稱 | 重要性 | 備註 |
 | ------ | ------ | ------ |
 | Hall's condition | 🌟🌟🌟🌟🌟 | 詳細於上方連結 |
 | Tutte's theorem | 🌟🌟🌟🌟🌟 | 詳細於上方連結 |
 | vertex cover >= matching | 🌟🌟 | 當等號成立時，表示最佳化； 並且在 bipartite 時， 等號成立 |
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
