# Basic

* 為第四章基礎部份，紀錄符號的使用

## kappa ϰ(G) - Separating set

唸做 kappa, 是為 `connectivity`，為 G 的最小 vertex 集合: `S` 的 size，其性質為 `G-S` 時會出現 disconnect 的現象，或是 `G-S` 只剩下 1 個 vertex（若 G 為 complete graph 時）
* 也就是 S 的 size 剛好是在構成 disconnect 要素的 threshold 上！

此時稱 graph G 為 `k-connected`，則表示其至少有值 = k 的 connectivity 存在！
* 而 S 則稱為 G 的 `separating set`，或是 `vertex cut`，S ⊆ V(G)，且 `G-S` 會有多個 component 產生(e.g. `disconnect`)

### ϰ(G) 性質

* ϰ(Kn) = n-1 （Complete Graph）
* ϰ(G) <= n(G)-2 （當 G 不為 Complete Graph）
* ϰ(Km,n) = min{m,n} （當 G 為 complete bipartite graph 時，取較小的 partite size 為 `ϰ` ） 
    * ϰ(K3,3) = 3 : 表示其 graph 可為 1-connected, 2-connected, 3-connected
* 當一個 graph 為 connected 且有 cut vertex，則其 > 2 個 vertices 時，`connectivity` > 1
* 若 graph > 1 vertex 時，其 connectivity 卻為 0 時，表示其 graph `本身便是 disconnected` 狀態！
* ϰ(K1) = 0 （本身為一個 vertex 的情形，=0） 

## N 維度的 HyperCube

* 記做 `Qn`
* vertex 數量為 `N=2^n`
* 每個 vertex 上都以 `n 個 bits` 的二元字串來做表示 （也就解釋為何數量為 2^n）
* 每對鄰近的 vertices，兩兩之間只會有 `1 bit 不同`
* `Qn` 為 bipartite graph 
```
試證：
2 組 maximum matching 組合，其 edge 形成必為 even cycle
而 even cycle 則可以為 partite !
```
![](./res/ch4/ch4-basic-hyperprove.jpg)

### HyperCube 增長維度方式

![](./res/ch4/ch4-basic-hyperdim.jpg)

## ϰ'(G) - Disconnecting set

* disconnecting set:
    * 為 `edge set`（相比屬於 vertex 集合的 separating set）
    * 標為 F (⊆ E(G))
    * 使 G-F 有 > 1 以上的 component (使 G `disconnect` 的 edge set)

* 若一個 graph 其每個 disconnecting set 至少有 k 個 edges:
    * 則稱此 graph 為 `k-edge-connected`
* `edge-connectivity`: `ϰ'(G)`，為 G 最小數量的 disconnecting set

### Def - [S,T]

![](./res/ch4/ch4-edge-cuts.jpg)

### Def - line graph

* 標記為 `L(G)`，表示為 graph G 的 line graph
* 用以做 graph 的轉換（ 原本的 edge 會對應到 line graph 中的 vertex ）
* 所以在後面 (**Theorem 4-2-19**) 的時候，就會用到 Line Graph 的這項性質！
    * 並且在轉換時，會需要額外在端點加上偽 vertex，(讓原本端點 x,y 能夠搭配新加入的 vertex 形成 edge，並且轉換為 line graph 當中的 vertex )

### Def - ear

* `ear`
    * 為 graph 中的 maximal path, 且其內部的 vertices 的 degree 皆為 2 (不包括`端點`)
* `ear decomposition`
    * 為 graph 中由一個 cycle `P0` 開始，依序加入 `P1`, `P2`, ..., `Pk`，當後續加入的 Pi (當 i > 1) 對目前 graph 而言為 `ear`，則稱為 ear decomposition（**e.g.** if k=2, 若 P2 為 `ear` 的話，則 `P0 ∪ P1 ∪ P2` 稱為 ear decompostion ）
* `closed ear`
    * 為一 cycle C 於 graph G 當中，並且這個 C 上除了一個跟 G 相接的 vertex (i.e. 這個 cycle 的起點與終點也是這個 vertex!)之外，*其餘 vertex 的 degree 皆為 2*
* `closed-ear decomposition`
    * 和 `ear decomposition` 相同，只不過在這邊 Pi(i > 1) 可以是為 **open ear 或是 closed ear**

* ear/closed-ear 皆有 theorem，參考 ear theorem 頁籤