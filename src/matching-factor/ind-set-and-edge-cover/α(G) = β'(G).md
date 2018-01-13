# α(G) = β'(G)

```
標住符號使用：

α(G)    ： maximum independent set
α'(G)    ： maximum matching
β(G)   ： minimum vertex cover
β'(G)   ： minimum edge cover
```

我們這邊來探討這個等式是怎麼出來的呢？

## 由已知所提供

從先前的 theorem、Lemma 中可得到相關性質：

1. α'(G) = β(G) 
```
Theorem:
    If G is a partite, then α'(G) = β(G) 
```

2. α(G) + β(G) = n(G) 
```
Lemma:
    In a graph G, S belong to V(G) is an "independent set" iff complement of S is a vertex cover, then " α(G) + β(G) = n(G) "
```

3. α'(G) + β'(G) = n(G) 
```
Theorem:
    If G is a graph "without" isolated vertices, then " α'(G) + β'(G) = n(G) "
```

### 融合

簡單綜合了一下上述的性質後，可以得到列式：
```
α(G) + β(G) = α'(G) + β'(G) = n(G)
=> α(G) + β(G) = α'(G) + β'(G)
```
再透過 ` α'(G) = β(G) ` 可以化簡上式：
```
=> α(G) = β'(G)
```

### 再看到性質

推得此性質後，我們再回頭看看這些條件成立時，所需要的 graph 特性：
* 由 1, 2, 3, 式中，我們可以歸納出其 graph 應有的特性：
    * If G is a `bipartite` graph, and with `no isolated vertices`!

```
所以可以得到 -> 
當 G 是為 bipartite graph 且沒有 isolated vertices 時，maximum independent set 等於 minimum edge cover!
```