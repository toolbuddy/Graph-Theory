## Network Flow

* 每條 edge 上都會有一個實際的 flow 值（`f(e)`），以及 capacity 的值（`cap(e)` or `c(e)`）
* 起始點： `source vertex (s)`； 終點： `sink vertex (t)`
    * 每個 vertex 可稱為 `node`
    * 而每個 node `v` 都會有流進與流出，分別標示為 `f-(v)` 以及 `f+(v)` （注意： 流進是帶負號的！）
* 並且有兩種方向：
    * 從 source 到 sink 的稱之為 `forward path`； 而反過來的則稱為 `backward path`

* 當一個 flow 為 feasible 時，表示其滿足：
    * `0 <= f(e) <= c(e)`
    * 且除了 s,t 之外的 node，都滿足 `流進` = `流出`

* 而由於除了 s,t 之外的節點都是持平，所以我們計算一個 flow：`f` 值（ 標記為 `val(f)` ）的時候，針對 *sink vertex* 做運算即可： `f-(t) - f+(t)`
    * 並且在 `val(f)` 達最大值時，表示此 flow 為 ***feasible flow 中的 `maximum flow`***

* f-augmenting path & `tolerance: z`:
    * 表示現階段的這條 flow 不是最佳解，還能夠增加 cap !
    * 接下來我們來看 f-augmenting path 的定義；需要滿足以下條件，才可稱為 f-augmenting path：
        * 若此時為 `forward` direction: 則 `f(e) < c(e)`
        * 若此時為 `backward` direction: 則 `f(e) > 0` 
    * 滿足以上條件，並且能夠從 source vertex 到 sink vertex 皆滿足，則此條路徑可稱為 *f-augmenting path*!
    * 如此我們可以計算其中的 **tolerance: z**:
        * tolerance 計算方式：
            * `forward`: z = `c(e) - f(e)`
            * `backward`: z = `f(e)`
        * 然後取得 path 上 z 的`最小值`，便是 tolerance
    * 而有了 tolerance 後，我們可以重新計算、改變這條 f-augmenting path( `f` )成為更加 `feasible` 的解 ( `f'` ) :
        * forward 的 edge 皆 `+z`； backward 的 edge 則 `-z`；
        * 所以新的 val: ***val(f') = val(f) + z***
        * 會比舊有的值多出 z！ 

* source/sink cut [S,T]
    * 為切分 source, sink 的 `edge cut`
    * 只包含 `forward` 的 edge ！
    * 並且當 flow: f 為 feasible 時，會符合：
        * `val(f) <= cap(S,T)`

* `Max-flow Min-cut Theorem （Ford and Fulkerson）`:
    * 這個定理是上面尋找 f-augmenting path 並轉換為 more feasible 解的演算法
    * 主要從輸入的 graph （network flow）中找到 `f-augmenting path` 後，透過運算獲得 tolerance 後更新這條 f-augmenting path
    * 直到沒有 f-augmenting path 存在後，即可從現有的 source-sink path 當中，找到最大值的 `val`，即可宣稱其為 network 中***最大的 feasible flow 值***，或是 ***最小的 source/sink cut 的 capacity***
    * val(f) = f+(S) - f-(S) = f+(S) = cap(S,T)