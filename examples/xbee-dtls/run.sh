set -e
make TARGET=m2354 BOARD=ASM2 NS=1

~/spuos/dist/axtool.exe -t nu_maker -f2 build/m2354/ASM2/dtls-client.bin COM3 &
sleep 1
NuLink.exe -reset
wait

set +e

(/mnt/c/Program\ Files\ \(x86\)/teraterm/ttermpro.exe /C=3 /BAUD=115200) &
sleep 1
NuLink.exe -reset
wait
