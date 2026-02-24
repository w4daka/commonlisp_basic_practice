(+ 1 2)
(+(* 2 3)(- 10 4))
(+ 1 2 3)
(+ (* 2 3)(- 10 4))

(if(> 5 3) 
    "greater"
    "not greater")
(if(> 5 3) 
    "not greater"
    "greater")

(+ 1 2 3)        ; → 6（関数呼び出しとして評価）
(quote (+ 1 2 3)) ; → (+ 1 2 3)（データとして返す）
'(+ 1 2 3)       ; → (+ 1 2 3)（quote の短縮記法）

(format t "Hello");コードとして実行される。

'(format t "Hello")

(eq nil '())      ; → T（同一オブジェクト）
(null nil)        ; → T（nilかどうか判定）
(null '())        ; → T
(listp nil)       ; → T（nilはリストである）
(atom nil)        ; → T（nilはアトムでもある！）

(if nil "true" "false")  ; → "false"
(if 0 "true" "false")    ; → "true"（0も真！）
(if "" "true" "false")   ; → "true"（空文字列も真！）
(if '() "true" "false")  ; → "false"（'() = nil）

;; cons: 新しいconsセルを生成
(cons 'a 'b)        ; → (A . B)  ドット対
(cons 'a '(b c))    ; → (A B C)  リスト
(cons 'a nil)       ; → (A)      1要素のリスト

;; car: 最初の要素（cons の左側）
(car '(a b c))      ; → A

;; cdr: 残りの要素（cons の右側）
(cdr '(a b c))      ; → (B C)
(cdr '(a))          ; → NIL
