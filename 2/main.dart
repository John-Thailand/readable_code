void main() {
  int sleepTime = fetchSleepTime();
}

// 2.1 明確な単語を選ぶ
// 「getSleepTime」だと、どこからデータを取得するか分からない
// しかし、fetchであればインターネットから取得していることがわかる
int fetchSleepTime() {
  return 2;
}

// 2.2 retvalなどの汎用的な名前を避ける
// エンティティの値や目的を表した名前を選ぼう
// retvaluという名前には情報がない。変数の値を表すような名前を使おう
int sumSquaredValues(List<int> values) {
  // retvalでなく、sumSquares（２乗の合計）とする
  int sumSquares = 0;
  for (int i = 0; i < values.length; i++) {
    sumSquares += values[i] * values[i];
  }
  return sumSquares;
}

// 2.4 名前に情報を追加する
// 時間やバイト数のように計測できるものは変数名に単位を入れると良い
// delay → delay_secs

// 3章 誤解されない名前
// 3.1 max_lengthも色んな解釈ができる→バイト数か文字数か単語数か
// もし文字数であれば、「max_length」でなく「max_chars」にする

// 3.6 bool値の名前
// bool値の変数名は、頭にis・has・can・shouldなどをつけて分かりやすくする
// spaceLeft()ではなく、hasSpaceLeft()とする。左スペースを持っているかのフラグ

// 4.5 一貫性と意味のある並び
// 例えば、対応するHTMLフォームの<input>フィールドと同じ並び順にする。
// details = request.POST.get('details');
// location = request.POST.get('location');
// phone = request.POST.get('phone');

// 4.7 コードを空行を使って意味のある段落ごとに分ける
// void setDBData() {
//   // DBをOpenする
//   db = db.Open;

//   // DBにデータをセットする
//   db.Set;

//   // DBをクローズする
//   db.Close
// }

// 5章 コメントすべきことを知る
// 5.2 コードの欠陥にコメントをつける
// TODO: 後で手を付ける
// FIXME: 既知の不具合があるコード
// HACK: あまりキレイじゃない解決策
// XXX: 危険！　大きな問題がある

// 6章 コメントは正確で簡単に
// 6.2 曖昧な代名詞を避ける
// 誤: データをキャッシュに入れる。ただし、先にそのサイズをチェックする。
// 正: データをキャッシュに入れる。ただし、先にデータのサイズをチェックする。

// 6.5 入出力のコーナーケースに実例を使う
// 実例: Strip("abba/a/ba", "ab")は "/a/"を返す
// String Strip(String src, String chars) {...}

// 6.7 名前付き引数コメント
// 引数の意味が分かる
// Connect(timeout = 10, use_encryption = False)

// 7章 制御フローを読みやすくする
// 7.1 条件式の引数の並び順
// 左側を「調査対象」の式。右側を「比較対象」の式とする。
// もし君が１８歳以上であるならば
// if (your_age <= 18)

// 7.2 if/else ブロックの並び順
// 条件は否定形よりも肯定形を使う
// if (!debug)ではなく、if(debug)を使う

// 7.3 三項演算子
// 行数を短くするよりも、他の人が理解するのにかかる時間を短くする
// 正：time_str += (hour >= 12) ? "pm" : "am";
// 誤：return exponent >= mantissa * (1 << exponent) : mantissa / (1 << -exponent);
// 上記は読みにくいため、if/else文を使う

// 7.5 関数から早く返す
// 関数で複数のreturn 文を使ってはいけないと思っている人がいる。
// むしろ関数から早く返すことは良いことである。
// public boolean Contains(String str, String substr) {
//   if (str == null || substr == null) return false;
//   if (substr.equals("")) return true;
// }

// 7.7 ネストを浅くする

// 8章 巨大な式を分割する
// 8.1 説明変数
// if line.split(':')[0].strip() == 'root';
// username = line.split(':')[0].strip()
// if username == "root";

// 8.2 要約変数
// 誤：if (request.user.id == document.owner_id) {
//   // ユーザーはこの文書を編集できる
// }
// request.user.id == document.owner_idは変数が５つも入っているから考えるのに時間がかかる
// このコードの言いたいことは「ユーザーを文書を所持しているか」である。
// 正：final boolean user_owns_document = (request.user.id == document.owner_id)
// if (user_owns_document)

// 11章
// 11.1 コードは１つずつタスクを行うようにしなければいけない
// 1 総スコアを取得、2 古い値を削除、3 新しい値を追加、4 総スコアをセット
// var vote_changed = function(old_vote, new_vote) {
//   var score = get_score();

//   score -= vote_value(old_vote);  // 古い値を削除する
//   score += vote_value(new_vote);  // 新しい値を追加する

//   set_score(score);
// }

// 12章 
// プログラムのことを簡単な言葉で説明する
// 3つの業のイテレータを一度に読み込む。
// 行のtimeが一致していなければ、一致するまで行を進める。
// 一致した行を印字して、行を進める。
// 一致する行がなくなるまでこれを繰り返す。