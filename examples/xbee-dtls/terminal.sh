COMPORT=8
taskkill.exe /FI "WINDOWTITLE eq "COM$COMPORT" - Tera Term VT"
(/mnt/c/Program\ Files\ \(x86\)/teraterm/ttermpro.exe "/C=$COMPORT" /BAUD=115200) &
sleep 1
NuLink.exe -reset
