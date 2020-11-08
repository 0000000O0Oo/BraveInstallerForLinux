echo "\e[92m[+] Brave Browser Installation Starting..."
echo "\e[92m[+] Adding Brave Repository to /etc/apt/sources.list.d/brave-browser-release.list...\e[1m\e[31m"

sudo apt-get install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" > /etc/apt/sources.list.d/brave-browser-release.list
echo "\e[32m[+] Updating the system...\e[1m\e[31m"
apt-get update
echo "\e[32m[+] Installing Brave Browser on the system...\e[1m\e[31m"
apt-get install brave-browser -y
echo "\e[32m[+] Installation Done !\e[1m\e[31m"
