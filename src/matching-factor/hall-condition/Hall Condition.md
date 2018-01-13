# Hall's Condition

一個 X,Y 的 bipartite graph G，擁有一個感染了所有 X partite set 內 vertices 的 Matching 的條件是必須符合 `| S | ≤ | N(S) |` ，S 屬於 X partite set ( N(S) 則屬於 Y partite set ) 

## 推導

證明通常在條件的情況下，可以由正向（必要性）、及反向（充份性）來做推導的方向，並依據方向做後續的證明動作

### Necessity（必要性）

從必要性著手來說是簡單的，我們可以用簡單的反證法來做說明：

* 若 |S| > |N(S)| 的條件下，能夠感染所有的 X，則可以從對應的圖中看到，N(S) 的數量是不足以提供給 S 做一一對應

### Sufficiency（充份性）

再來就是比較複雜些的反向； 若 Hall condition 成立`（p）`，則 X,Y-bigraph 的 X 會全部被感染`（q）`

而講義課本上的證明方式是利用上述反向再加上反向，透過笛摩根定律可以得到 `非 q 推導至 非 p` 這個結果，也是接下來討論主要依據

```
變成：
當 M 為一個 G 內的 maximum matching，且 M 沒有完全感染 X partite set，則一定存在屬於 X 的集合：S，並且 |N(S)| < |S|

而我們現在便是用上述方式來做推導後，證實上面 "非 q -> 非 p" 為真即可！
```

* 有了假設列式後，便可以開始推導：
    * u ∈ X： u 為一個沒有被 M 所感染的 vertex
    * 定義集合： S 屬於 X， T 則屬於 Y， 兩者皆為`從 u 透過 M-alternating paths 可觸及`的 vertex 集合
* 假設一個矛盾情況： graph G (X,Y) 沒有 matching 能夠感染所有 X 內的 vertices；讓 M 成為 G 的 maximum matching，且 u 表示為一個在 X partite set 中尚未被 matching M 感染的 vertex
    * 再來設定準備討論的子集合：*從 u 開始能夠觸及的所有 alternating paths*（ matching / non-matching 相間 的 path ）
    * 並在這個 paths 上的 vertices 集合做分類：
        * T：屬於 Y partite set 
        * W：屬於 X partite set

```
注意：
在這個矛盾假設 condition 下，這條 maximal alternating path 的結束點是不會在 Y partite set 中出現的！
不然會成為 augmenting path！
```

* 透過 M matching 的幫助下，除了 u 以外的 W 可以跟 T 互相配對；同樣的 T 內的 vertices 也透過 M 與 W \ {u} 互相配對
* 因此 M 提供了一個 W \ {u} 與 T 的 bijection， 並且 `|W| = |T| + 1`
```
W \ {} ： 表示除去 u 以外的 W 集合
```

* 而另一方面， N_G(W)： W 集合在 G 中的鄰居之集合，其屬於 T 之中；
* 這時我們`假設 v 為 Y 中的 vertex，連接到 W 內的 vertex w 之上`
    * 若 (w,v) ∈ M，則 v 在 T 之中；
    * 而這麼一來，我們便可以把原先的 alternating path (其 ending 於 W 中) 透過 v 這個 vertex 來做延伸
* 那麼此時， `|N_G(W)| = |T| = |W| - 1` -> 得證！

```
推導致此，可以導出 "不符合 Hall condition 的情況下，則 maximum matching 無法感染所有 X partite set 內 vertices" 這一個論點
```

## Summary

* 簡單來說，充份性的部份我們透過 **假設** 上述的矛盾情況存在於 case 中，則這個 M alternating path 存在
    * 使得 | N_G(W) | = | T |， 且 = |W| - 1
    * => | N_G(W) | = |W| - 1 < | W | => `| N_G(W) | < | W |`

```
得到 "不合 Hall's condition" 的情況下，則其 maximum matching 無法感染所有 X partite set 的結果！

（等價於前面提到的 "非 q -> 非 p"）
```