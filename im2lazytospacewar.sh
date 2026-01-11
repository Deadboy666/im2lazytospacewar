#!/usr/bin/env bash
set -eu

SLSsteamConfigDir=$HOME/.config/SLSsteam
FlatpakSLSsteamConfigDir=$HOME/.var/app/com.valvesoftware.Steam/.config/SLSsteam

    whereSLSsteamconfig(){
            if [ -d "$FlatpakSLSsteamConfigDir" ]; then
                cd $FlatpakSLSsteamConfigDir/
            else
                    cd $SLSsteamConfigDir/
                fi
                    echo "" &> /dev/null
                }


    im2lazytospacewar(){
        whereSLSsteamconfig
        sed -i "/^FakeAppIds:/a\\  $appid: 480" config.yaml
        sed -i "s/\\\$appid/$appid/" config.yaml
        }
    main(){
        read -rp "Enter AppID: " appid
        im2lazytospacewar
        }
main
