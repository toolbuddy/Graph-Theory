## Cayley Theorem 

搭配根目錄底下 `pdf/Cayley-Theorem.pdf` 做閱讀！
本篇透過從頭論述 graph 的基本定義開始做推導，慢慢推到為什麼 Cayley formula 要做這樣的舉動，以及最後為什麼是這個公式

### Basic Concept

Cayley Formula 的核心概念，主要可以從 n 個 vertices 上能建構出多少棵樹：
* Bottom up 的方式：
    * 從散落的 vertices 開始，逐一加入 edges 來建構 tree
* Top down 的方式：
    * 從 complete graph 中 remove edge 來得到 tree

而 Cayley Formula 則告訴我們有多少種方法來得到 tree (e.g. 到底有多少 spanning tree 於 n 個 vertices 之上); 我們把這個結果記為 `Tn`
* 得到的格式： `| Tn | = n^(n-2)`

### Prufer Encoding

再來我們看到 Prufer Encoding （`Pn`）:
* Prufer code 是為 n-2 個串列數字組成，可成為 `n^n-2` 個 Prufer sequence; 並且每個 Prufer sequence 都可以對應到一棵 tree
* 如此一來我們可以得到 Tn 與 Pn 之間關係的 bijective function

### Forest

定義 Tn,k ： n 個 vertices, 並且 k 為形成的 graph 之 tree elements 的數量 （e.g. 每個形成的 forest set 內 tree 的總數）

可以把 graph G 看成 `k` 個 tree，每個 root （`root 數量即等於 k`）都可以連結到 i 個 vertices（從 `n-k` 當中取 i 個成為這個 root 的 tree）

如果把這個 root 刪除，則可以得到 （k-1） + （i） 個 vertices

並從此規則來看到，我們的 Tn,k 可以等於 其餘樹的總數（Tn-1）以及從 (n-k) 當中挑選 i 個的結果 （可以參考 pdf 內的 `equation (2)`）

之後搭配 Proposition 的公式，便可以得到 general case 的情況！也就是 Tn,k 所能產出的 spanning tree 的數量

而 Cayley Formula 則是在這個 general case 為 Tn,1 的時候的解（也就是 當 n 個 vertices 下，所能構成的最大 spanning tree 總數為多少）

