COMPORT=8

taskkill.exe /FI "WINDOWTITLE eq "COM$COMPORT" - Tera Term VT"

set -e
make TARGET=m2354 BOARD=ASM2 NS=1

pkill -9 axtool.exe || true
~/spuos/dist/axtool.exe -t nu_maker -f2 build/m2354/ASM2/dtls-client.bin "COM$COMPORT" &
sleep 1
NuLink.exe -reset
wait

set +e

(/mnt/c/Program\ Files\ \(x86\)/teraterm/ttermpro.exe "/C=$COMPORT" /BAUD=115200) &
sleep 1
NuLink.exe -reset
