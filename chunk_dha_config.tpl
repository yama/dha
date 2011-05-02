// ==承認の段階数設定
// 例: $config['approval_level'] = 2; // 2段階の承認が行われる
$config['approval_level'] = 2;

// ==レベルとロール(=ユーザーロールID)の設定
// 添え字にレベル、値にロールを設定(スラッシュ区切りで複数設定)
// ※レベルは「$config['approval_level']」の数だけ設定するように
// ※ユーザーロールIDは「ManagerManager」の設定画面等で確認してください。
// 
// 例: $level_and_role [ 1 ] = "1/3"; // 1段階目の承認にはユーザーロールID 1と3のユーザーが割り当てられる
//     $level_and_role [ 2 ] = "1/4"; // 2段階目の承認にはユーザーロールID 1と4のユーザーが割り当てられる
//     (ちなみにユーザーロールID 1はadminのロール)
$level_and_role [ 1 ] = "1/3";
$level_and_role [ 2 ] = "1/4";

// ==レベルと項目名の設定
// 添え字にレベル、管理画面で表示する項目名(※レベルは「$config['approval_level']」の数だけ設定するように)
// 
// 例: $level_and_mes [ 1 ] = "部門承認"; // 1段階目の承認の名称
$level_and_mes [ 1 ] = "部門承認";
$level_and_mes [ 2 ] = "Web総括承認";

// ==選択項目
// 0:「承認しない」場合に選択する選択肢
// 1:「承認する」場合に選択する選択肢
$a_approval_string [ 0 ] = "承認しない";
$a_approval_string [ 1 ] = "承認する";
