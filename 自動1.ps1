﻿New-Item -Path .\ -Name "scratch2apk" -ItemType "directory"
cd scratch2apk
git clone https://github.com/TurboWarp/packager.git
cd packager
npm ci
npm start
