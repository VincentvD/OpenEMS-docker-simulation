curl -s https://api.github.com/repos/OpenEMS/openems/releases/latest | awk -F\" '/browser_download_url.*openems-ui\.zip/{print $(NF-1)}' | xargs wget -q -O openems-ui.zip

rm -rf m
mkdir m

unzip openems-ui.zip -d m