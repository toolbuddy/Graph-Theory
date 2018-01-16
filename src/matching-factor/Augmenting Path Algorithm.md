## Augmenting Path Algorithm

輸入為一個 bipartite，分別擁有 X、Y 兩個 partite set

* 使用到的集合：
    * U： augmenting path 尚未感染到的 X 集合
    * S： 被來自 U 的 M-alternating path 所觸及到集合（於 X 之中）
    * T： 被來自 U 的 M-alternating path 所觸及到集合（於 Y 之中）

* Initial:
    * U = X, T = 空集合, 並且 S = U

* Iteration:
    * 開始從 U 中選擇沒被感染的 X 集合來做找尋
    * 其中在找到 matching 時，會置於 S 之中
    * 若在 iteration 結束時，仍有**未被感染的 vertices 存在**，則表示可能還存在 M-augmenting path
    * 這時找目前已標記（ S 集合）的 vertices 中做嘗試；從未被感染的 vertices 開始走，照著 M, M-alternating path 的交錯方式，在 X, Y 之間走，找尋是否有其他合適的 augmenting path 存在
        * 注意：這邊之所以再 iteration 中無法被感染的 vertices，大多數是其可觸及的 T （Y 內已感染的集合）已經都有所屬了
        * 所以藉此找到 `M-augmenting path` 來
    * 當存在 augmenting path 時，則可以做 M/M-alternating path 的互換，產生最大 matching