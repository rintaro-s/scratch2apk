Write-Host "コンソールは両方閉じないでください"
sleep 130
start 'http://localhost:8947/'
Write-Host "ブラウザで開かれた画面から,sb3ファイルを「zip」でファイルで変換してください。"
$name = Read-Host "作品名を入力してください（半角英数字のみ）: "
cordova create $name com.$name.hello $name
cd $name
#cordovaファイルのroot
$zipPath = Read-Host "ダウンローされたzipファイルの絶対パスを入力してください: "
#cordvaの中にtmp
New-Item -Path .\ -Name "tmp" -ItemType "directory"
cd tmp
#cordca/tmp
Expand-Archive -Path $zipPath -DestinationPath .\ -Force
Copy-Item -Path * -Destination ../www -Force
Write-Host "ダウンロードされたzipファイルは削除してもらっていいです。"
cd ..
cordova platform add android
cordova build 
Write-Host "apkファイルは、作品名\platforms\android\app\build\outputs\apk\debug\app-debug.apkです。"
Write-Host "コンソールを両方閉じてもらって構いません"
pause

