# check if GCC is installed
if command -v gcc >/dev/null 2>&1; then
if [ $# -gt 0 ]; then
    g++ SString.c QTree.c Main.cc -D$1 -w -O3 -o /tmp/ndba-out && /tmp/ndba-out
else
    g++ SString.c QTree.c Main.cc -w -O3 -o /tmp/ndba-out && /tmp/ndba-out
fi
else
    echo -e "\033[1m\033[31mError\033[0m: The GNU Compiler Colection GCC isn't installed on your system."
    echo -e "Run \033[47mapt install -y gcc\033[0m to install it."
    exit 1
fi