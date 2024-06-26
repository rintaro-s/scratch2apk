Write-Host "なんか作られるけど気にしないで。２分たって完了しなかったら終了して、もう一度試してください"
cordova create tm com.tm.hello tm
cd tm
cordova platform add android
Write-Host "--------------------------------------------"
Write-Host "javaのバージョンは17.x、cordovaの検査では全部インストールされていることが前提です。"
Write-Host "cordovaが完璧にインストールされていて（buildができて）、node.jsとgitが動作すればいいです"
Write-Host "何かエラーが出ていたら上手く動作しません。"
Write-Host "android build toolはバージョン34.0.0にしないといけません。作成者はそれと、下のリンクの環境変数でつまずきました。"
Write-Host "https://cordova.apache.org/docs/en/12.x/guide/platforms/android/index.html#requirements-and-support"
Write-Host ""


cordova requirements
git -v
Write-Host "node.js:"
node -v
Write-Host "--------------------------------------------"
cd ..
Remove-Item tm -Recurse

pause