# 2 Factor Algorithm

最主要的概念即為 `把 2*k - regular graph 轉換成 2 個 k-factor`

## 推導

首先考慮到 sufficient，以 connected graph G 說明：

* 當 connected graph G 為 `even degree` 時，擁有一條 `Eulerian Trail`
* 我們可以`走遍(a.k.a = Traversal)`一次這條 trail，並且獲得 G 的 `orientation`： D

### 進一步修改原本圖形做解釋

* 而改成 directed graph 後，此時的每個 vertex 都有 in/out-degree，並且依照前面提到的， connected graph G 為 2*k regular 的情況下，這時的 in/out-degree 的數值相等，都等於 `k`
* 這時我們來做些修改，方便辨識：
    * 有了方才提到的 in/out-degree 的屬性後，我們著手來修改原本 G 的 vertex
    * 用另外兩種 vertex: `v'`, `v''` 來取代原本的 vertex: `v`（分別代表 in/out ）
    * 而原本的 directed graph lines(e.g. = edges) `u->v, ∈ E(D), 屬於 D 的 edge 集合`，在這個取代過後的 graph 當中，我們則以一條 `u'->v''` 的 edge 做取代
    ```
    注意！取代過後的 edge 上面 vertex 的標記
    出發點為第一種點、目的點則是第二種點！
    用來區分 in/out 的不同使用
    ```
    * 而 D 之 in/out degree（由 `v'`, `v''` 的集合表示） 數值皆等於 `k`，而 `v'`, `v''` 所形成的即為一個 bipartite `G'`，並且為 `k-regular`； 而 `G'` 的 lines 則可分解成 `k 個 perfect matching`
    ```
    值得注意的地方是，在這裡這 k 個 perfect matching 都是在 bipartite 的圖形下的 perfect matching
    也可以解釋到下面，為什麼可以從 k 個 perfect matching 來對應到 k 個 2-factor 的原因
    ```

* 再從整個角度下去看，在 `G'` 中 `k 個 perfect matching` 則會對應到 `G` 上，成為 `k 個 2-factor` 存在