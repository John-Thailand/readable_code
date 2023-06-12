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