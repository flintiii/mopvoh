#! /usr/bin/bash
# Tue 16 Jan 2024 01:45:52 PM EST 
name="My Own Personal Version Of Hell"
pname="mopvoh.sh"
version="0.2024.02.05.13:26
"
#
# Installs docker as part of sane.
#
#
function help(){
#* function help  - Help function for template basic help goes here
clear;
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version; uroot #deb
#
cat $0 | grep '^## ' | sed -e 's/##//'
# echo "This is the help function"
##            *****DOCUMENTATION*****
##  You get this when you put in the wrong number or type of arguments...
##  The name of this program is mopvoh.sh. This is released under GPL I
##  The syntax is functionally divided:
## System
##  - sane       - Checks that you have the stuff you need.
##  - adalias    - Adds flint custom alias file to user space.
##  - flink/flunk- Patches or removes argumment to current user path.
##  - bupdate    - update packages and backup package file.
## Linux Containers (LXC)
##  - lxc-create <NAME> creates a dicker instance.
##  - lxc-update - updates your git repository.
## Python
##  - inspy24    - installs python 2.4 on current system.
## Zope
##  - inszp21    - installs 2.10 version of python on current system.
## Data
##  - dupdate    - update Data.fs locally
##  - tpiclle    - tests Data.fs locally
##    *** NOTE *** Most commands need to be run as root.
##  For structure information type "grep '^\#\*' mopvoh.sh"
} # Test: mopvoh.sh help
#
#
function dummy(){
#* function dummy - Rename and fill stuff in between braces
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: mopvoh.sh dummy
#
#
function lxc-create(){
#* function lxc-create - creates a dicker instance with NAME
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: mopvoh.sh lxc-create
#

#
function lxc-update(){
#* function lxc-update - updates your git repository.
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: mopvoh.sh lxc-update
#
function inszp21(){
#* function inszp21 -  installs zope on current system.
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: mopvoh.sh inszp21
#
function inspy24(){
#* function inspy24 -  installs python 2.4 on current system.
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: mopvoh.sh inspy24
#
function dupdate(){
#* function dupdate - Rename and fill stuff in between braces
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: mopvoh.sh dupdate
#
function tpiclle(){
#* function tpiclle - Rename and fill stuff in between braces
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: mopvoh.sh tpiclle
#
function toftpad(){
#* function toftpad - Turn off touchpad
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
# xinput | grep -i touch
echo " "
echo "Turn off this Touchpad?"
xinput | grep -i touchpad |tr -s " " |cut -d " " -f 3-
dsabl=$(xinput | grep -i touchpad |tr -s " " |cut -d " " -f 6 |tr -d " \t"|cut -d "="  -f2 |cut -d "[" -f 1)
pntr=$(xinput | grep -i touchpad |tr -s " " |strings |cut -d " " -f2)  
echo "This is hooked to the touchpad pointer: "$pntr
xinput | grep -i $pntr
echo "Be prepared to disable \"id\"s related to pointer..."
echo "xinput disable "$dsabl
echo "Cntrl<C> to stop"
spause 
# xinput disable 
} # Test: mopvoh.sh toftpad
#
function bookmarks(){
#* function bookmarks - install bookmarks and relink for nautilus
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# uroot
#  install bookmarks and relink for nautilus
#  scp flint@trantor.local:./.gtk-bookmarks ~/.\
mkdir -p /home/flint/.config/gtk-3.0/obe
echo $USER
mv  /home/flint/.config/gtk-3.0/bookmarks  /home/flint/.config/gtk-3.0/obe/$(date +%F)_bookmarks
ln -s  /home/flint/.gtk-bookmarks /home/flint/.config/gtk-3.0/bookmarks
ls -alt /home/flint/.config/gtk-3.0/bookmarks
spause
} # Test: mopvoh.sh bookmarks
#
#
function fxtpi(){
#* function fxtpi - Fix touch pad indicator
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
#
# fix touchpad
# tpi.shlentry
# install touchpad control
sudo add-apt-repository ppa:atareao/atareao
sudo apt-get update
sudo apt-get install touchpad-indicator
#
} # Test: mopvoh.sh fxtpi
#
function lentry(){
F#* function lentry - fix always use location entry
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
echo "now the gnome config stuff"
spause
apt-get install dconf-editor
gsettings get org.gnome.nautilus.preferences always-use-location-entry
echo "now to do it..."
spause
sudo dbus-launch gsettings set org.gnome.nautilus.preferences always-use-location-entry "true"
gsettings get org.gnome.nautilus.preferences always-use-location-entry
spause
} # Test: mopvoh.sh lentry
#
function adalias(){
#* function adalias - Adds the aliases you want in your .bash_aliases
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
echo "Entry"
# uroot
wget http://docbox.flint.com/~flint/bin/.bash_aliases
wget http://docbox.flint.com/~flint/bin/bash_aliases.sh
chmod +x bash_aliases.sh
echo "remember!  Type the following:"
echo ". ./bash_aliases.sh"
echo "That's all folks!"
} # Test: mopvoh.sh adalias
#
#
function bupdate(){
#* function bupdate - Updates package lists & backups packages
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
# update packages
echo "Now you need root"
sudo apt-get update
#
# now update package file
echo "writing packages_$(date +%F)"
dpkg --get-selections > packages_$(date +%F)
#
clear
echo "To restore packages try this:"
echo " ls -alt | grep packages"
echo " dpkg --set-selections < packages"
echo " apt-get dselect-upgrade"
#
} # Test: mopvoh.sh bupdate
#
#
function setalias(){
#* function setalias - sets the alias features we like
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
# set alias
#
cd ~
mkdir -p ~/obe
cp .bash_aliases obe/$(date +%F)_.bash_aliases
wget http://docbox.flint.com/~flint/bin/.bash_aliases
} # Test: mopvoh.sh setalias
#
function bufrusb(){
#* function budfrusb - backs up home dSirectory to usb
clear
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
#
# mkchoice.sh - make a choice from a list of items
# Usage: mkchoice.sh [item1] [item2] [item3] ...
# Example: mkchoice.sh "item 1" "item 2" "item 3"
# clear files for use
rm -rf /tmp/choices
rm -rf /tmp/mounted
rm -rf /tmp/usbs
rm -rf /tmp/usbs.txt
rm -rf /tmp/sources.txt
rm -rf /tmp/target.txt
rm -rf /tmp/target.txt
rm -rf /tmp/doit
#
# echo "cleaned up"; read
#
# create a list of usb mounted devices
df -h |grep media | sort -n |while read line
do
 ln=$(($ln+1))
 echo -n  $ln "  "
 #echo $line
 # echo $(cut -d " " -f 1 $line)
 echo -n -e ' \t ' $(echo -n $line | cut -d " " -f 1)  |tee -a /tmp/usbs
 echo  -n -e ' \t '|tee -a /tmp/usbs
 echo -n "  "$(echo -n $line | cut -d " " -f 2)
 echo -n "  "$(echo -n $line | cut -d " " -f 3 |tr -d [:blank:])
 echo -n " " $(echo -n $line | cut -d " " -f 4 |tr -d [:blank:])
 echo -n " " $(echo -n $line | cut -d " " -f 5 |tr -d [:blank:])
 echo -n " " $(echo -n $line | cut -d " " -f 6 |tr -d [:blank:])|tee -a /tmp/usbs
 echo ""|tee -a /tmp/usbs
#
done

# sort -n /tmp/usbs > /tmp/usbs.txt
#D
#D echo "start cat /tmp/usbs.txt"
#D read
#D cat /tmp/usbs.txt
cat /tmp/usbs |cut -f 3 > /tmp/choices
echo "Which one do you want to back up? (#)"
#D read
# mapfile -t choices < /tmp/choices
mapfile -t choices < /tmp/choices
#D cat $choices
#D read
# make choice in mapfile
select choice in "${choices[@]}"
do
    # echo "$choice"
    break
done
#D read
rm -rf /tmp/choice 2> /dev/null
grep $choice /tmp/usbs |cut -f 2 |tee /tmp/choice
#D > /dev/null
 #
rm -rf /tmp/mounted 2> /dev/null
grep $choice /tmp/usbs |cut -f 3 |tee /tmp/mounted
#D > /dev/null
 #D echo "start cats"
#D read
#
#D echo "start cat /tmp/mounted"
#D cat /tmp/mounted
#D echo "start cat /tmp/choices"
#D cat /tmp/choices
#D echo ""
#
cat /tmp/usbs | while read line;  do  grep $choice |tee /tmp/target; done  > /dev/null
# choice="/dev/sdb1";
echo "choice is: "$choice
utarget=$(cat /tmp/usbs |grep $choice |cut -f 2) ; echo "TADA"$utarget #TADA
#
echo "Backup Source : " $utarget
#D $(cat /tmp/mounted |grep $choice)
bdest=$(echo $choice|cut -d "/" -f 4)
echo "backup destination: "$bdest
# write command
echo -n 'sudo dd if=' >> /tmp/doit
echo -n $utarget >> /tmp/doit
# backup from usb drive to <file>$(date +%F).iso
echo -n ' | pv -s 2G | dd of=' >> /tmp/doit
echo -n $(date +%F) >> /tmp/doit
echo -n '_' >> /tmp/doit
echo -n $bdest >> /tmp/doit
echo ' bs=4096' >> /tmp/doit
echo "actual command line is: "
chmod +x /tmp/doit
cat /tmp/doit
# navigate to usb drive
# run this:rsync -avr /home .
} # Test: bufrusb.sh doit
#
#
function bu2usb(){
#* function bu2usb - backs up home directory to usb
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test:pluma mopvoh.sh dummy
#
# backup home to usb drive
# navigate to usb drive
# run this:rsync -avr /home .
#
#
#  symlink pluma to gedit
#  cd /usr/bin
#  mv gedit gedit.org
#  ln -s pluma gedit
#
function pluma(){
#* function pluma - make pluma default gui editor
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
echo "which files:"
which gedit
which pluma
 # symlink pluma to gedit
 cd /usr/bin
 mv gedit gedit.org
 ln -s pluma gedit

} # Test: mopvoh.sh pluma
#



#
#  install bookmarks and relink for nautilus
#  scp flint@trantor.local:./.gtk-bookmarks ~/.\
#  mkdir -p /home/flint/.config/gtk-3.0/obe
#  mv  /home/flint/.config/gtk-3.0/bookmarks  /home/flint/.config/gtk-3.0/obe/$(date +%F)_bookmarks
#  ln -s  /home/flint/.gtk-bookmarks /home/flint/.config/gtk-3.0/bookmarks
#  ls -alt /home/flint/.config/gtk-3.0/bookmarks
#  ln -s  /home/flint/.gtk-bookmarks /home/flint/.config/gtk-3.0/bookmarks
#  scp flint@trantor.local:./.gtk-bookmarks /home/flint/.
#  mkdir -p /home/flint/.config/gtk-3.0/obe
#  mv  bookmarks obe/$(date +%F)_bookmarks
#
#
function ibonjour(){
#* function ibonjour - Rename and fill stuff in between braces
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
#
install bonjour
apt-get install avahi-daemon avahi-utils avahi-discover
service avahi-daemon restart
#
} # Test: mopvoh.sh ibonjour
#  Fix Tablet
# https://www.linuxquestions.org/questions/linux-newbie-8/touch-screen-activation-in-ubuntu-15-10-lts-on-panasonic-toughbook-cf-29-mark-v-4175560322/
#
# https://www.bobjohnson.com/blog/giving-an-old-toughbook-a-new-lease-on-life-with-linux/
#
#https://www.youtube.com/watch?v=pIvWTH8L0Fk
#
#
#https://www.ebay.com/sch/i.html?_from=R40&_trksid=pmkdir -p /home/flint/.config/gtk-3.0/obe2334524.m570.l1313&_nkw=home+elevator+lift&_sacat=0&LH_TitleDesc=0&_osacat=0&_odkw=home+elevator+kit
#
#
#https://www.youtube.com/watch?v=CgdsamzPN8w
#
#https://search.yahoo.com/yhs/search?hspart=ddc&hsimp=yhs-linuxmint&type=__alt__ddc_linuxmint_com&p=unistrut+elevator
#
#
#####################################STANDARD AND MAYBE USEFUL FUNCTIONS BELOW
#
#* function uroot - Checks to see if you are root
function uroot(){
# echo "Make sure only root can run script"
if [ "$(id -u)" != "0" ]; then
   echo "This script needs to run as root and you are not root" 1>&2;
   spause
   exit
else
   echo "This script needs to run as root but that's OK as you are root" 1>&2
fi
} # Test:~flint/bin/mtoc.sh uroot
#
#* function spause   - A simple tarry...
function spause(){
   # -t sets time
   # read -t $pt -p "$*" ans
   read -p "Hit enter to continue..." ans
   echo $ans
}
#
function sane(){
#* function sane - check location of vital files and programs, sanity check
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
rm -rf need > /dev/null
for prog in openssh-server gparted nautilus pluma git snmp gedit sudo vim most less wget docker.io	
#d ;do echo $prog; done
#D banana # programs you need put here
do
	# echo $prog
	# Better SOURCE:https://www.cyberciti.biz/faq/find-out-if-package-is-installed-in-linux/
	answer=$(echo $(dpkg-query -W -f='${Status} ${Version}\n' $prog)| cut -d " " -f 3)
	# echo $answer
	if [ "$answer" != "installed" ]
	then
	    echo $prog >> need
	    #debug echo "Type \"sudo apt-get install $prog\" to fix this."
	    #debug spause
	    # exit 0
	fi
done
#D clear
echo "Welcome to $0!"
# uroot
echo "Missing programs:"
	if [ -f need ];
	then
	   echo "    This program needs the following program(s) to be installed on this system."
	   cat need |while read line; do echo -e \\t" - " $line; done
	   if [ "$(id -u)" != "0" ]; then
   		echo "This script needs to run as root and you are not root" 1>&2
	        echo "You want them installed if you are root they will install"
		echo "Leaving this function without installing anything"
		exit
	   fi
	   spause
	   cat need |while read line; do
		echo "apt-get --yes install $line"
		apt-get --yes install $line
	   done
	   #D
	   rm -rf need
	   exit 0 # breaks you out of loop...
	else
	   echo " * None *  Looks like the pot's right, lets play!"
	fi
#
echo "end of check"
} # Test: mopvoh.sh sane
#
function flink(){
#* function flink - Adds adds two symlinks to public
# This function, which runs as root, will make the program,
# which must end in sh executable and then
# then the function adds two symlinks to the first element
# of the $PATH variable linking the argument and the argument suffixed with "sh"
# both linked to the second script element (hopefully /usr/local/bin).
# echo  "into root"
# sudo bash
# echo  "outa root"
uroot
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# Note user must be "$USER", fix in 2.0
# trap "set +x; sleep 5; set -x" DEBUG
HMDIR=$(pwd) #
echo $HMDIR
echo $var2
spause
FNAME=$var2
echo "Is this the right name "$FNAME
#D
spause
# echo $PWD | cut -d ":" -f 3
LKDIR="/usr/local/sbin"
echo $LKDIR
spause
# echo "removing "$HMDIR"/fu.sh"; rm  $HMDIR/fu.sh 2>/dev/null
cd $HMDIR/bin
echo $PWD" should be the home bin"
echo $PATH" should be the overall path for "$USER
#D ls -alt $HMDIRs
cd $LKDIR
sudo ln -s $HMDIR/$FNAME .
# sudo ls -alt $LKDIR/$FNAME
cd ~
echo -n "keep in mind you are in your home directory now..."
#
spause
} # Test: mopvoh.sh flink <filename>
#
#
function flunk(){
#* function flunk - Un-Symlinks [file] & [file].sh into $PATH
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
echo $var2
spause
FNAME=$var2
echo "Is this the right name "$FNAME
#D
spause
echo "rm /usr/local/sbin/$FNAME -Do This?"
spause
sudo rm /usr/local/sbin/$FNAME
} # Test: mopvoh.sh <filename>
#
#*###################################### MAIN ENTRY POINT AND COMPOUND CASE
#
#* Evaluator Routine
# Note the evaluator allows for many cases and error checking...
#d ARGS=$#         # carries the number of args into the functions...
#D echo $#"     "$1"    "$2"    "$3"    "$ARGS ;spause
if [ "$#" -eq "1" ] && [ "$1" = "adalias"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "lentry"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "fxtpi"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "ibonjour"    ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "toftpad"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "update"      ]; then ARGS="1"; fi
if [ "$#" -eq "2" ] && [ "$1" = "flink"       ]; then ARGS="2"; fi
if [ "$#" -eq "2" ] && [ "$1" = "flunk"       ]; then ARGS="2"; fi
if [ "$#" -eq "1" ] && [ "$1" = "bupdate"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "bu2usb"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "pluma"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "bufrusb"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "setalias"    ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "bookmarks"   ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "dummy"       ]; then ARGS="1"; fi
if [ "$#" -eq "2" ] && [ "$1" = "lxc-create"       ]; then ARGS="2"; fi
if [ "$#" -eq "1" ] && [ "$1" = "lxc-update"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "inspy24"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "inszp21"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "dupdate"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "tpiclle"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "uroot"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "spause"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "sane"        ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "help"        ]; then ARGS="9"; fi
# this tests the evaluator...
#D echo $#"     "$1"    "$2"    "$3"    "$ARGS ;spause
#
#* Dispatcher Routing
# typical cases, be careful to make your own...
case "$ARGS" in
    "0") clear; $1="help"; exit 1;;     # got nothing, display help and go
    "1") $1 ;;  # run the command
    "2") var2=$2;  $1 ;;    # run the command with an argument
    "3") var3=$3; var2=$2;  $1 ;;       # run the command with two arguments
    "4") var4=$4; var3=$3; var2=$2;  $1 ;;          # run the command with three arguments
    "5") prompt=$2; $1 ;;   # run the command with a different argument
    "6") time=$3; prompt=$2;  $1 ;;     # run the command with two different arguments
    "7") $1 ;;           # run the command and default variables
    "8") var2=$2;  $1 ;;    # run the command and settle variables
    "9") var3=$3; var2=$2;  $1 ;;       # run the command and settle variables
    "9") var3=$3; var2=$2;  $1 ;;       # run the command and settle variables
      *) clear; cat $0 | grep '^## '| sed -e 's/##//'; exit 1;; # Anything else run help and exit...
esac # End main loop. TEST: ?fill in test?
#
# echo " "; echo "On "$(date +%F\ %r) $0" version "$version" stops"
#debug echo  "That's all folks!!"
#
#* restore environment cd "$S"

