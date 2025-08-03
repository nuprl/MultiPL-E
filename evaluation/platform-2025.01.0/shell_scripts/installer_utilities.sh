###################### COPYRIGHT/COPYLEFT ######################

# (C) 2022 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### Installer creating utility functions #####################

##### Check if a newline separated list contains an item #####

# $1 = list
# $2 = item

function list_contains {
#   This variant does not work when $2 contains regexp chars like conf-g++
#   [[ $1 =~ (^|[[:space:]])$2($|[[:space:]]) ]]
    [[ $'\n'"$1"$'\n' == *$'\n'"$2"$'\n'* ]]
}

##### Check if a newline separated list contains an item with prefix #####

# $1 = list
# $2 = prefix

function list_contains_prefix {
    [[ $'\n'"$1"$'\n' == *$'\n'"$2"* ]]
}

##### Check if a URL exists #####

# $1 url

function check_url {
  curl --head --silent --fail "$1" >/dev/null
}

##### Check if an (opam) license name has an SPDX record #####

# $1 = name of license
# $2 = name of package (for warnings)

declare -A SPDX_LICENSE

function check_spdx_license {
  if [ -z ${SPDX_LICENSE[$1]+_} ]
  then
    if check_url "https://spdx.org/licenses/$1.html"
    then
      SPDX_LICENSE[$1]=yes
    else
      SPDX_LICENSE[$1]=no
    fi
  fi

  if [ "${SPDX_LICENSE[$1]}" == "yes" ]
  then
      return 0
  else
    echo "License for package '$2' with name '$1' has no SPDX record" >> WARNINGS.log
    return 1
  fi
}

##### Create a theme index for adwaita icon theme #####

# Taken from Adwanita's Makefile
# $1 = root of the icon theme

function make_theme_index {
pushd "$1"

cat> index.theme <<'EOT'
[Icon Theme]
Name=Adwaita
Comment=The Only One
Example=folder

EOT
echo "Directories=$(find */* -type d | tr -s "\n" ,)" >> index.theme
echo "" >> index.theme

(
for dir in `find */* -type d`; do
    sizefull="`dirname $dir`"
    if test "$sizefull" = "scalable"; then
        size="16"
    elif test "$sizefull" = "scalable-up-to-32"; then
        size="16"
    else
        size="`echo $sizefull | sed -e 's/x.*$//g'`"
    fi
    context="`basename $dir`"
    echo "[$dir]"
    if test "$context" = "actions"; then
        echo "Context=Actions"
    fi
    if test "$context" = "animations"; then
        echo "Context=Animations"
    fi
    if test "$context" = "apps"; then
        echo "Context=Applications"
    fi
    if test "$context" = "categories"; then
        echo "Context=Categories"
    fi
    if test "$context" = "devices"; then
        echo "Context=Devices"
    fi
    if test "$context" = "emblems"; then
        echo "Context=Emblems"
    fi
    if test "$context" = "emotes"; then
        echo "Context=Emotes"
    fi
    if test "$context" = "intl"; then
        echo "Context=International"
    fi
    if test "$context" = "mimetypes"; then
        echo "Context=MimeTypes"
    fi
    if test "$context" = "places"; then
        echo "Context=Places"
    fi
    if test "$context" = "status"; then
        echo "Context=Status"
    fi
    if test "$context" = "ui"; then
        echo "Context=UI"
    fi
    if test "$context" = "legacy"; then
        echo "Context=Legacy"
    fi
    echo "Size=$size"
    if test "$sizefull" = "scalable"; then
        echo "MinSize=8"
        echo "MaxSize=512"
        echo "Type=Scalable"
    elif test "$sizefull" = "scalable-up-to-32"; then
        echo "MinSize=16"
        echo "MaxSize=32"
        echo "Type=Scalable"
    elif test "$size" = "256"; then
        echo "MinSize=56"
        echo "MaxSize=256"
        echo "Type=Scalable"
    elif test "$size" = "512"; then
        echo "MinSize=56"
        echo "MaxSize=512"
        echo "Type=Scalable"
    else
        echo "Type=Fixed"
    fi
    echo ""
done
) >> index.theme

popd
}

##### retry a command (macOS hdiutil is unreliable since a while) #####

# $1 = retry count
# $2 = wait time [s]
# $3.. = command and args

function retry_command()
{
    local maxtries=$1
    local sleeptime=$2
    local cmd="${@: 3}"
    local ntries=0
    echo "retry $maxtries with delay of $sleeptime command '$cmd'"
    while true
    do
        if [ $ntries -ge $maxtries ]
        then
            echo "Max retry count reached -> abort"
            return 1
        fi

        if $cmd
        then
            return 0
        else
            ((ntries++))
            echo "Command failed: $cmd - try $ntries/$maxtries"
            sleep $sleeptime
        fi
    done
}
