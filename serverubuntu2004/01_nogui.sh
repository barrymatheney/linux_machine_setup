printf 'bmatheney ALL=(ALL:ALL) NOPASSWD:ALL\n' | sudo tee -a /etc/sudoers >/dev/null
git config --global user.name "Barry Matheney"
git config --global user.email "barry_matheney_msdn@outlook.com"

sudo apt update
sudo apt install net-tools nmap tasksel - y
tasksel --list-tasks
sudo tasksel install xubuntu-desktop





