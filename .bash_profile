
function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" 
    local COLOR_CODE=`pwd | md5 | cut -c1`
    local COL_a="{ 2560, 2560, 10240 }"
    local COL_b="{ 1024, 17408, 4608 }"
    local COL_c="{ 21504, 3072, 512 }"
    local COL_d="{ 12288, 0, 13056}"
    local COL_e="{ 26624, 24576, 512}"
    local COL_f="{ 256, 24576, 24576}"
    local COL_0="{ 256, 256, 20736}"
    local COL_1="{ 0, 0, 0 }"
    local COL_2="{ 1024, 17408, 12800 }"
    local COL_3="{ 37632, 2048, 18176 }"
    local COL_4="{ 24320, 2304, 42240 }"
    local COL_5="{ 750, 23040, 23300 }"
    local COL_6="{ 48128,29440 , 1280 }"
    local COL_7="{ 24000, 22500, 22000 }"
    local COL_8="{ 11500, 10240, 10000 }"
    local COL_9="{ 17152, 31700, 29440 }"
    local giz="COL_${COLOR_CODE}"
    local color=${!giz}
    osascript -e "tell application \"Terminal\" to set background color of window 1 to $color"
}
