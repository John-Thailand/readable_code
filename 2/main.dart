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