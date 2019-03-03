# Union-find木で同じグループに属す集合を調べる

## 使用例
 - `atcoder/190303/d.rb`

## 使い方

```ruby
uft = UnionFindTree.new(4)
uft.unite(1,2) # 1,2 を連結 -> (0, 1-2, 3)
uft.size(1) # 2
uft.size(0) # 1
uft.unite(2,3) # 2,3 を連結 -> (0, 1-2-3)
uft.unite(0,3) # 0,3 を連結 -> (0-1-2-3)
```

## 実装
```ruby
class UnionFindTree
  def initialize(n)
    @size = Array.new(n + 1, 1)
    @rank = Array.new(n + 1, 0)
    @parent = []

    (0..n).each do |i|
      @parent[i] = i
    end
  end

  def find(x)
    if @parent[x] == x
      x
    else
      @parent[x] = find(@parent[x])
    end
  end

  def unite(x, y)
    x = find(x)
    y = find(y)
    return if x == y

    if @rank[x] < @rank[y]
      @parent[x] = y
      @size[y] += @size[x]
    else
      @parent[y] = x
      @size[x] += @size[y]

      @rank[x] += 1 if @rank[x] == @rank[y]
    end
  end

  def same?(x, y)
    find(x) == find(y)
  end

  def size(x)
    @size[find(x)]
  end
end
```

## 参考
- http://hai3.net/blog/2014/09/21/ruby-union-find-tree/
- https://atcoder.jp/contests/abc120/submissions/4452380
