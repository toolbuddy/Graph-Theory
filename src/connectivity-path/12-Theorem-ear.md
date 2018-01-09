這邊主要講述跟 ear 相關的幾個定理說明，包括 `ear`/`closed-ear`、`strong orientation` 

## Theorem - ear 

當一個 graph G 是為 `2-connected` 時，表示 G 有一個 `ear decomposition`; 並且每個 cycle 於 `2-connected` 的 graph 中皆為某個 `ear decomposition` 的 **initial cycle**

* Proof: 
    * 先從 `Sufficiency` 證明起 （若 G 有 ear decomposition，則 graph 為 `2-connected`）
    * 假設現在 graph G 為 2-connected, 則 G 滿足條件：能夠再加入任何一個 ear 後保持 2-connected 的狀態 -> 
        * 設現有的 graph G 狀態為 2-connected (i.e. 擁有 ear decomposition)
        * 則此時從上面找到兩點： u,v ，並且構成一個新的 ear : P (uv 間做 `subdivision` 的動作後，使得符合 ear 的定義："所有內部存在的 vertices ，其 degree 皆為 2" 的條件)
            * subdivision 會保持 2-connected!
        * G + uv 仍為 2-connected（於此適用於繼續以相同方式加入 ear! graph G **仍會保持 2-connected**）
    * 再來是 `Necessity` 的部份 （若 G 有 2-connected，則表示 G 有 ear decomposition）
    * 假設目前存在一個 graph G，其為 2-connected； 且存在一個 Cycle `C` 於 G 當中
    * 則此時從這個 cycle C 作為 ear decomposition 的 initial cycle 開始，逐一加入 ear 進去；做一個 iterative 的動作；
        * iterative 動作： 
        * 挑選非目前 ear decomposition 的兩個 vertices（`u,v`），再從 ear decomposition 上挑選兩個 vertices（`x,y`）
        * 使這 4點 構成一個 cycle，這麼一來就形成新的 ear decomposition 了！
    * 停止條件為，*當目前的 ear decomposition* 等於當初的 graph G 時，就停止
        * 所以當 iterative process 結束時，便可得到一個擁有 2-connected 性質的 ear decomposition - G

## Theorem - closed-ear

當一個 graph G 是為 `2-edge-connected` 時，表示 G 有一個 `closed-ear decomposition`; 並且每個 cycle 於 `2-edge-connected` 的 graph 中皆為某個 `decomposition` 的 **initial cycle**

（跟上面的定理類似，只是從原本針對 vertex 的 2-connected 換成 2-edge-connected）

## Theorem - strong orientation

當 graph G 存在強方向性（該 graph 中所有的 undirected edge 全部替換成 directed 時稱之），則表示 G 為 ***2-edge-connected***!

* Proof
    * `Necessity`：
        * 當 graph G 存在 strong orientation 時，表示 G 不可能為 disconnected、並且不存在 `cut-edge`!
        ( strongly orientation 的性質其中就有 `bridgeless`，所以不會存在兩個 component 之間只有單向的 directed edge 存在的情形 )
    * `Sufficiency`:
        * 當 graph G 有 `2-edge-connected` 性質存在時，則其有一個 `closed-ear-decomposition` =>
        * 跟前面 ear 的定理證明類似，從 initial cycle 出發，把 initial cycle 上所有的 edge 做 orient，形成必要條件: strongly orientation
        * 接著再一一加入`新的 ear`（跟前面的加入方式相同），並把這些新 ear 上面 edges 做 orient 
        * 藉此可以得證！
