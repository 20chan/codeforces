# codeforces

[profile](https://codeforces.com/submissions/20chan)

- 대충 생각날때마다 할 것
- 다양한 언어로 다양한 방식으로 접근해볼 것
- 재밌는거 있으면 아래로 기록함

## 재밋는거..

### [4a Watermelon](https://codeforces.com/contest/4/problem/A)

요건 `n > 2 && n % 2 == 0` 임을 판단하는 건데 왠지 n을 두번 쓰기 싫어서 다양한 방법을 찾았따

#### range 안에 포함되어잇는가

```python
print(["NO","YES"][int(input()) in range(4,101,2)])
```

루비도 처음엔 이방식으로 했는데 있다가 더 재밋는걸 알게되서 

```ruby
puts ((4..101).step(2).include? gets.to_i) ? "YES" : "NO"
```

#### 모듈러 연산이 음수를 반환한다면

자바, C#, Javascript, Io가 그러하다

```io
n := File standardInput readLine asNumber
((n-3)%2==1) ifTrue("YES" println) ifFalse("NO" println)
```

근데 codeforces 테스트 돌리는데에서는 io있더니 막상 제출하려 하니 io가 없더라 그래서 자바스크립트

```javascript
print((parseInt(readline())-3)%2===1?"YES":"NO")
```

#### 정규식

그냥 레전드엿다 이 풀이를 보고 지진이 일어낫다

```ruby
puts gets.match(/^\d+[02]|\d*[468]$/)?"YES":"NO"
```

#### Arrow

하스켈 Arrow 를 이용한 풀이가 있다고 한다 근데 난 봐도 모르겠다 그냥 ..썼다 이게 뭐임

```haskell
import Control.Arrow

main :: IO()
main = do
    input <- getLine
    let n = (read input :: Int)
    putStrLn $ if ((>= 2) *** (== 0)) (n `divMod` 2) == (True, True) then "YES" else "NO"
```