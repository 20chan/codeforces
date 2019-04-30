n := File standardInput readLine asNumber
((n-3)%2==1) ifTrue("YES" println) ifFalse("NO" println)