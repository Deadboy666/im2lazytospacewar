#!/usr/bin/env bash

SLSsteamConfigDir=$HOME/.config/SLSsteam
FlatpakSLSsteamConfigDir=$HOME/.var/app/com.valvesoftware.Steam/.config/SLSsteam

    whereSLSsteamconfig(){
            if [ -d "$FlatpakSLSsteamConfigDir" ]; then
                cd $FlatpakSLSsteamConfigDir/
            else
                    cd $SLSsteamConfigDir/
                fi
                }

        whereSLSsteamconfig
        read -rp "Enter AppID: " appid
        sed -i "/^FakeAppIds:/a\\  $appid: 480" config.yaml
        sed -i "s/\\\$appid/$appid/" config.yaml
