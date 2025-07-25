# 🔍 解説：ナビゲーションの「スタック」とは？  
Flutter の画面遷移（Navigator）は、スタック（stack）構造を使っています。

* 「スタック」とは、後から入れたものが先に出る（LIFO: Last-In First-Out）のデータ構造です。
* Flutter の Navigator は、各画面をスタックに「積む」・「戻す」で管理しています。

## ✅ context.push('/second') の意味  
これは：

```dart
context.push('/second');
```
のように、新しい画面（例: /second）を 現在の画面の上に「積む」 という操作です。

📌 結果的にこうなる：

```less
[画面A] ← 最初の画面  
[画面B] ← context.push('/second') によって追加された画面（新しいトップ）
```
## ✅ これに対して pop() は？

```dart
context.pop();
```
は、スタックの`一番上の画面（最新の画面）を削除（戻る）`操作です。

```css
[画面A]  
[画面B] ← popされて削除される
```
結果的に画面Aに戻ります。


🎯 まとめ
| 操作                    | 説明                             | スタックの変化     |
|-------------------------|----------------------------------|--------------------|
| context.push('/second') | 新しい画面をスタックに追加       | A → A, B           |
| context.pop()           | 一番上の画面をスタックから削除   | A, B → A           |
