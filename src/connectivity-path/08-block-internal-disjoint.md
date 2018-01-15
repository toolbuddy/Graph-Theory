# k-connected

## Def - block

![](./res/ch4/ch4-block.jpg)

## Def - internally-disjoint

![](./res/ch4/ch4-internal-disjoint.jpg)

## Theorem - 4.2.2

![](./res/ch4/ch4-thm-internal-disjoint.jpg)

![](./res/ch4/ch4-thm-internal-disjoint-2.jpg)

![](./res/ch4/ch4-thm-internal-disjoint-3.jpg)

![](./res/ch4/ch4-thm-internal-disjoint-4.jpg)

## Lemma

當 G 為 `k-connected` graph，且 G' 是從 G 加上一個新的 vertex: y（並讓 y 擁有 k 個於 G 中的 vertex 做鄰居），則 G' 仍為 `k-connected`

* Proof

![](./res/ch4/ch4-lemma-k-connected-1.jpg)

![](./res/ch4/ch4-lemma-k-connected-2.jpg)


## Theorem - equivalent 情況

對於一個擁有**至少3個 vertices 以上的** graph G 來說，以下情況為等價：

A) G 為 connected 且沒有 cut-vertex 

B) 對於屬於 G 的 vertex `x,y,`， 內部存在不相交的 x,y-paths

C) 對於屬於 G 的 vertex `x,y,`, 存在一個 cycle 穿過 x,y

D) δ(G) >= 1，且所有 pair of edges 會剛好在同一個 cycle 上 （e.g. 一定存在一 cycle 經過這 2 條配對邊）


#### Prove - A) <=> B)

由 Theorem 4.2.2 （上面）來做證明！ 說明 A 與 B 互為等價

#### Prove - B) <=> C)

透過兩條 disjoint 的 x,y-paths 來組合這個通過的 cycle

#### Prove - D) => C)

* 從 `δ(G) >= 1` 可以知道， x 和 y 不是`孤立點`
* 再透過 D 內性質： pair of edges 落在同一個 cycle 上來說明，存在一 cycle 穿過 x,y

#### Prove - A) ^ C) => D)

* G 若為 connected，則表示 δ(G) >= 1 （D 的性質）
* 再來考慮兩條 edges: uv, xy
* 透過 subdivision 的方式從中生出一個中間點 w,z ；透過新生成的這兩條 edge: `uwv, xzy` 來構成 cycle （ by `性質 C`）
* 接著再刪除 subdivision 產生的新 vertex，來還原成原本的 edges；而這時可以知道，仍為兩條 disjoint edge； 那麼就可以證實， 原先這兩條 uv, xy 在這個 cycle 上（只是透過原先 uv, xy 來取代生成 cycle 的 `uwv, xzy`）
* 這樣就可以完成由 *A 和 C 的聯集等價於 D* 的結論