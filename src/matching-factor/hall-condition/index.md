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
```

* 有了假設列式後，便可以開始推導：
    * u ∈ X： u 為一個沒有被 M 所感染的 vertex
    * 定義集合： S 屬於 X， T 則屬於 Y， 兩者皆為`從 u 透過 M-alternating paths 可觸及`的 vertex 集合
