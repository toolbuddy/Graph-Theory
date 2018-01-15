# Theorem 4.2.17 - Menger Theorem

## 性質

* 兩點之間的 vertex cut 的最小值: `ϰ(x,y)`，會等於其內部 pairwise disjoint x,y path（內部`成對`、`不相交`，`不使用共同 vertex`的 paths ） 的數量最大值: `λ(x,y)`

=> `ϰ(x,y) = λ(x,y)` by ***Menger 定理***

![](./res/ch4/ch4-menger-1.jpg)

## Proof

* 證明主要透過`節點數量 n(G)`的狀況來做分析，並透過數學歸納法做證明

![](./res/ch4/ch4-menger-proof-1.jpg)

### Case 1

Case 1 狀況為: 假設 x,y-cut: S 集合不為 x,y 的鄰居時的情況做分析

![](./res/ch4/ch4-menger-proof-case1.jpg)

#### Case 1-1

藉由使得 x 側、 y 側收斂來說明，`|S| = k， ϰ(x',y) = ϰ(x,y') = k` (Case 1 中 **connectivity** 的部份)

![](./res/ch4/ch4-menger-proof-case1-1.jpg)

#### Case 1-2

從收斂的兩張圖可以看出，`λ(x',y) = λ(x,y')`，進而可以刪除 x',y' 來還原成原圖，可得 `λ(x',y) = λ(x,y'), λ(x',y) = λ(x,y') = λ(x,y) = k`( Case 1 中 pairwise disjoint x,y path 的部份)

![](./res/ch4/ch4-menger-proof-case1-2.jpg)

結合 Case 1-1 以及 Case 1-2，可以知道在 Case 1 假設情況下， `ϰ(x,y) = λ(x,y)`；接下來準備進入另一個狀況討論：

### Case 2 + Case 2-1

當 x,y-cut: S 集合為 x,y 的鄰居時的情況：

`Case 2-1:` 情況為 **"當 N(x), N(y) 之間還有存在其他 vertices 時"**

![](./res/ch4/ch4-menger-proof-case2.jpg)

#### Case 2-2

`Case 2-2:` 情況為 **"當 N(x), N(y) 之中，有部份 overlap 情況發生時"**

![](./res/ch4/ch4-menger-proof-case2-2.jpg)

#### Case 2-3

`Case 2-3:` 情況為 **"當 N(x), N(y) 互為 bipartite 之中的 partite set 時"**

![](./res/ch4/ch4-menger-proof-case2-3.jpg)

### Summary

Case 2 則同樣透過這三種情況來說明 `"ϰ(x,y) = λ(x,y)"`

![](./res/ch4/ch4-menger-proof-case2-3-1.jpg)