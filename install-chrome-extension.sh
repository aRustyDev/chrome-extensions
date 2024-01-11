#!/bin/bash

install_chrome_extension () {
  preferences_dir_path="/opt/google/chrome/extensions"
  pref_file_path="$preferences_dir_path/$1.json"
  upd_url="https://clients2.google.com/service/update2/crx"
  mkdir -p "$preferences_dir_path"
  echo "{" > "$pref_file_path"
  echo "  \"external_update_url\": \"$upd_url\"" >> "$pref_file_path"
  echo "}" >> "$pref_file_path"
  echo Added \""$pref_file_path"\" ["$2"]
}

if ! which "google-chrome" ; then
  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub \
  | sudo apt-key add -
  echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' \
  | sudo tee /etc/apt/sources.list.d/google-chrome.list
  sudo apt-get update
  sudo apt install google-chrome-stable
else
  echo Chrome already installed
fi

install_chrome_extension "aeblfdkhhhdcdjpifhhbdiojplfjncoa" "1password"
# install_chrome_extension "aeblfdkhhhdcdjpifhhbdiojplfjncoa" "listening.io" # isn't on the store
install_chrome_extension "jldhpllghnbhlbpcmnajkpdmadaolakh" "todoist"
install_chrome_extension "apnjnioapinblneaedefcnopcjepgkci" "gh-repo-size"
install_chrome_extension "hlkenndednhfkekhgcdicdfddnkalmdm" "cookie-editor"
install_chrome_extension "lmhkpmbekcpmknklioeibfkpmmfibljd" "redux"
install_chrome_extension "bkdgflcldnnnapblkhphbgpggdiikppg" "duckduckgo"
install_chrome_extension "aikkeehnlfpamidigaffhfmgbkdeheil" "ai-code-finder"
install_chrome_extension "fpdpbfkdodkadhickmncmaaklaafpplm" "link-unshortener"
install_chrome_extension "gcknhkkoolaabfmlnjonogaaifnjlfnp" "foxyproxy"
install_chrome_extension "oboonakemofpalcgghocfoadofidjkkk" "keepassxc"
install_chrome_extension "jnhgnonknehpejjnehehllkliplmbmhn" "web-scraper"
install_chrome_extension "ofaokhiedipichpaobibbnahnkdoiiah" "data-scraper"
install_chrome_extension "ihljmnfgkkmoikgkdkjejbkpdpbmcgeh" "listly-web-scraper"
install_chrome_extension "didegimhafipceonhjepacocaffmoppf" "passbolt"
install_chrome_extension "aacgdipdhmilcpcpbdcloifondogabco" "url-shortener"
install_chrome_extension "lkdokbndiffkmddlfpbjiokmfkafmgkm" "qrcode-generator"
install_chrome_extension "hgmhmanijnjhaffoampdlllchpolkdnj" "hunter-email-finder"
install_chrome_extension "einnffiilpmgldkapbikhkeicohlaapj" "snov.io-email-finder"
install_chrome_extension "jlleokkdhkflpmghiioglgmnminbekdi" "giphy"
install_chrome_extension "haebnnbpedcbhciplfhjjkbafijpncjl" "tineye-rev-image-search"
install_chrome_extension "chkgcmmjoejpekoegkedcpifgfhpjmec" "library-extension"
install_chrome_extension "hfjbmagddngcpeloejdejnfgbamkjaeg" "vimium-c"
install_chrome_extension "mnakbpdnkedaegeiaoakkjafhoidklnf" "vortimo-osint"
install_chrome_extension "odpdkefpnfejbfnmdilmfhephfffmfoh" "readlang"


# UI Prettification
install_chrome_extension "ogkjfglelpailehmjlkaodhoiageienh" "helix-tab"
install_chrome_extension "ddeaekifelikgnaacipabpmjpffgifek" "anori"
install_chrome_extension "dlnejlppicbjfcfcedcflplfjajinajd" "bonjour-start-page"
install_chrome_extension "bngmbednanpcfochchhgbkookpiaiaid" "mue-tab"
install_chrome_extension "legkgkghbgdnjniakjhbecfiohcapejh" "foxy-tab"


# Testing 
install_chrome_extension "mciiogijehkdemklbdcbfkefimifhecn" "chrono-download-manager"
install_chrome_extension "ejfmffkmeigkphomnpabpdabfddeadcb" "vimeorecord"
install_chrome_extension "agipnmmjnjcfgkhmlgifikmibgngblop" "atomic-video-downloader"