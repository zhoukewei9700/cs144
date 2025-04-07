RED='\033[1;31m'
NC='\033[0m'

if [ "$EUID" -eq 0 ]; then
  echo -e "${RED}Please do not run this script as root or with sudo.${NC}"
  exit 1
fi

sudo apt-get -y install cmake gdb build-essential clang clang-tidy clang-format pkg-config tcpdump tshark;

directory="$HOME/cs144/minnow"
repository="https://github.com/cs144/minnow"

if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
    git clone "$repository" "$directory"
    echo "Repository cloned successfully into '$directory'"
else
    echo "Directory '$directory' already exists. Skipping cloning."
fi
