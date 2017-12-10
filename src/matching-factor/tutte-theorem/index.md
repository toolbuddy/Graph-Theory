# Tutte's theorem

由 Tutte 於 1947 年提出，理論為 `A graph G has a 1-factor iff o(G-S)<=|S| for every S, which belongs to V(G)`

* `o(G)`: 表示 graph G 的 odd components 的數量
* `1-factor`: 等於 perfact matching 的狀態
* `V(G)`: 表示 graph G 的 vertex 集合

# 證明與概念詳細解釋

從正向（`Necessity`）與反向（`Sufficiency`）證明

## Necessity（必要性）

* 正面從 G 是為一個 1-factor 的圖做解釋，可以知道以這種情況下可以畫出圖形：

![](../../../res/ch3/g-tutte-ne.png)

* 以性質來看
    * S 屬於 V(G)，而所有屬於 `G-S` 的 odd components 皆有一條 edge 連到 `S` 上
    * 而連到 S 內，則表示在 S 中必有同等數目的 vertices 與這條 edge 做對應的 endpoint，且互為 unique（不會重複使用 endpoint）
* 透過**鴿籠原理**，我們可以知道，以上圖為例，S 上有 3 個 odd components 與之連線，有 3 條 edges 進 S 當中，與之對應必有 3 個 unique 的 vertex，則 `|S| >= o(G-S)` 這條式子必成立

> 從正面去證明是直觀，並且簡單的；
> 而接下來是 tutte 的精華

## Sufficiency（充份性）

* 這邊是從後面性質證回來，也就是說明擁有 `o(G-S) <= |S|` 性質的 graph，其必有 1-factor（perfact matching）的存在
* 而我們可以使用反證法（擁有 `o(G-S) <= |S|` 性質，卻沒有 `1-factor`）來做證明，透過相同模型（分兩邊做討論），來分析各種情況，舉出擁有 `1-factor` 的實例，說明此假設錯誤，tutte's theorem 為真

### 先從假設的狀況下手

* 從 graph G 沒有任何 edge 下開始做，每次都加一條 edge 進去，形成新的 graph，並持續下去；因此我們可以把式子列出：
    * If `G' = G + e, S belongs to V(G)`, then `o(G'-S) <= o(G-S) <= |S|`
    > odd components 只會隨著 edge 的加入愈來愈少
    > 所以新的 graph 的 odd components 數量一定小於等於加入 edge 前的 graph 之 odd components
    * If `G' = G + e` has *no 1-factor*, then *G has no 1-factor*