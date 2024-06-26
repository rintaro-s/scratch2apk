New-Item -Path .\ -Name "scratch2apk" -ItemType "directory"
cd scratch2apk
git clone https://github.com/TurboWarp/packager.git
Start-Process -FilePath .\b.ps1
cd packager
npm ci
npm start