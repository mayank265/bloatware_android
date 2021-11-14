@echo off
set /p Y=Enter adb.exe folder path:    
cd %Y%
adb devices
pause
for %%X in (
"com.android.browser" 
"com.android.email"
"com.android.thememanager"
"com.android.wallpaper.livepicker"
"com.facebook.services"
"com.facebook.system"
"com.facebook.appmanager"  
"com.google.android.apps.photos"
"com.google.android.apps.tachyon"
"com.google.android.feedback"  
"com.google.android.marvin.talkback"
"com.google.android.music" 
"com.google.android.talk"
"com.google.android.tts"
"com.google.android.videos" 
"com.mi.android.globalpersonalassistant"
"com.mi.global.shop"
"com.mi.global.bbs"
"com.mi.webkit.core"
"com.mipay.wallet.in"
"com.miui.analytics" 
"com.miui.bugreport"
"com.miui.cloudbackup"
"com.miui.cloudservice"
"com.miui.cloudservice.sysbase"
"com.miui.hybrid.accessory"
"com.miui.klo.bugreport"
"com.miui.miwallpaper"
"com.miui.player"
"com.miui.providers.weather"
"com.miui.screenrecorder"
"com.miui.translationservice"
"com.miui.translation.kingsoft"
"com.miui.translation.youdao"
"com.miui.touchassistant"
"com.miui.videoplayer"
"com.miui.virtualsim"
"com.miui.weather2"
"com.miui.yellowpage"
"com.xiaomi.account"
"com.xiaomi.discover"
"com.xiaomi.micloud.sdk"
"com.xiaomi.midrop"
"com.xiaomi.mipicks"
"com.xiaomi.oversea.ecom"
"com.xiaomi.payment"
"com.xiaomi.xmsf" ) do (
    echo %%X
    adb shell pm uninstall %%X
    adb shell pm uninstall --user 0 %%X
)
pause 