#!/bin/bash

###################### COPYRIGHT/COPYLEFT ######################

# (C) 2020 Michael Soegtrop

# Released to the public under the
# Creative Commons CC0 1.0 Universal License
# See https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt

###################### UTILITY FUNCTIONS #####################

# ------------------------------------------------------------------------------
# Convert a version string in A.B.C.D format to a comparable number
# - the version string may have up to 4 components
# - each component may have up to 2 digits
#
# Parameters
# $1 version string
# ------------------------------------------------------------------------------

function version_to_number {
  printf "%d%02d%02d%02d" $(echo "$1" | tr '.' ' ');
}

# ------------------------------------------------------------------------------
# Check if a command is available
#
# Parameters
# $1 command ro check for, e.g. gcc, clang, curl
# ------------------------------------------------------------------------------

function check_command_available {
  if ! command -v "$1" &> /dev/null
  then
    echo "=========================== Missing prerequisite ============================"
    echo "This script requires command '$1' to be installed."
    echo "Please install this command manually using your system's package manager!"
    echo "This script will exit now."
    echo "Please restart the script after you installed '$1'."
    echo "=========================== Missing prerequisite ============================"
    return 1
  fi
}

# ------------------------------------------------------------------------------
# Ask a one option + cancel question
# Set environment variable ANSWER to the result
#
# $1 message
# $2 option 1 keys (only first is shown - this is also the return value)
# $3 option 1 text
#
# Example: ask_user_opt1_cancel "Disable sandbox (d) or cancel (c)?" dD "disable sandbox"
# ------------------------------------------------------------------------------

function ask_user_opt1_cancel {
  while true; do
    read -p "$1 (${2:0:1}/c=cancel) " answer
    case "$answer" in
        [$2] ) ANSWER=${2:0:1}; echo; return 0 ;;
        [cC] ) return 1 ;;
        * ) echo "Please answer '${2:0:1}'=$3 or 'c'=cancel/exit.";;
    esac
  done
}

# ------------------------------------------------------------------------------
# Ask a two option + cancel question
# Set environment variable ANSWER to the result
#
# $1 message
# $2 option 1 keys (only first is shown - this is also the return value)
# $3 option 1 text
# $4 option 2 keys (only first is shown - this is also the return value)
# $5 option 2 text
#
# Example: ask_user_opt2_cancel "Shall the existing switch be kept (k) or deleted (d) ?" kK "keep" dD "delete"
# ------------------------------------------------------------------------------

function ask_user_opt2_cancel {
  while true; do
    read -p "$1 (${2:0:1}/${4:0:1}/c=cancel) " answer
    case "$answer" in
        [$2] ) ANSWER=${2:0:1}; echo; return 0 ;;
        [$4] ) ANSWER=${4:0:1}; echo; return 0 ;;
        [cC] ) return 1 ;;
        * ) echo "Please answer '${2:0:1}'=$3, ${4:0:1}'=$5 or 'c'=cancel/exit.";;
    esac
  done
}

# ------------------------------------------------------------------------------
# Ask a three option + cancel question
# Set environment variable ANSWER to the result
#
# $1 message
# $2 option 1 keys (only first is shown - this is also the return value)
# $3 option 1 text
# $4 option 2 keys (only first is shown - this is also the return value)
# $5 option 2 text
# $6 option 3 keys (only first is shown - this is also the return value)
# $7 option 3 text
#
# Example: see ask_user_opt2_cancel and add 2 more arguments
# ------------------------------------------------------------------------------

function ask_user_opt3_cancel {
  while true; do
    read -p "$1 (${2:0:1}/${4:0:1}/${6:0:1}/c=cancel) " answer
    case "$answer" in
        [$2] ) ANSWER=${2:0:1}; echo; return 0 ;;
        [$4] ) ANSWER=${4:0:1}; echo; return 0 ;;
        [$6] ) ANSWER=${6:0:1}; echo; return 0 ;;
        [cC] ) return 1 ;;
        * ) echo "Please answer '${2:0:1}'=$3, ${4:0:1}'=$5, ${6:0:1}'=$7 or 'c'=cancel/exit.";;
    esac
  done
}

# ------------------------------------------------------------------------------
# Ask a four option + cancel question
# Set environment variable ANSWER to the result
#
# $1 message
# $2 option 1 keys (only first is shown - this is also the return value)
# $3 option 1 text
# $4 option 2 keys (only first is shown - this is also the return value)
# $5 option 2 text
# $6 option 3 keys (only first is shown - this is also the return value)
# $7 option 3 text
# $8 option 4 keys (only first is shown - this is also the return value)
# $9 option 4 text
#
# Example: see ask_user_opt2_cancel and add 2x2 more arguments
# ------------------------------------------------------------------------------

function ask_user_opt4_cancel {
  while true; do
    read -p "$1 (${2:0:1}/${4:0:1}/${6:0:1}/${8:0:1}/c=cancel) " answer
    case "$answer" in
        [$2] ) ANSWER=${2:0:1}; echo; return 0 ;;
        [$4] ) ANSWER=${4:0:1}; echo; return 0 ;;
        [$6] ) ANSWER=${6:0:1}; echo; return 0 ;;
        [$8] ) ANSWER=${8:0:1}; echo; return 0 ;;
        [cC] ) return 1 ;;
        * ) echo "Please answer '${2:0:1}'=$3, ${4:0:1}'=$5, ${6:0:1}'=$7, ${8:0:1}'=$9 or 'c'=cancel/exit.";;
    esac
  done
}

# ------------------------------------------------------------------------------
# Ask for a number
#
# $1 message
# $2 lower
# $3 upper
# ------------------------------------------------------------------------------

function ask_user_number {
  while true; do
    read -p "$1 (number in $2..$3, c=cancel) " answer
    case "$answer" in
        [cC] ) return 1 ;;
    esac
    if [ "$2" -le "$answer" ] && [ "$answer" -le "$3" ]
    then
      ANSWER="$answer"
      echo
      return 0
    else
      echo "Please enter a number between $2 and $3 or c to cancel"
    fi
  done
}

# ------------------------------------------------------------------------------
# Determine the total and available RAM in kbyte
#
# results are stored in MEM_TOTAL and MEM_AVAIL
# ------------------------------------------------------------------------------

function get_memory_info {
  if [[ "$OSTYPE" == linux* ]]
  then
      echo "TODO: unimplemented"
    return 1
  elif [[ "$OSTYPE" == darwin* ]]
  then
    MEM_TOTAL=$(echo $(sysctl hw.memsize | awk '{print $2}') / 1024 | bc)
    MEM_AVAIL=$(echo '(' $(sysctl vm.page_free_count | awk '{print $2}') '+' $(sysctl vm.page_speculative_count | awk '{print $2}') ') * 4' | bc)
  elif [[ "$OSTYPE" == cygwin ]]
  then
      echo "TODO: unimplemented"
    return 1
  else
      echo "ERROR: unsopported OS type '$OSTYPE'"
      return 1
  fi
}

# ------------------------------------------------------------------------------
# Check value against an enumeration argument
# The value __unset__, which should be substituted for unset variables is valid.
#
# $1: value to check
# $2: bash pattern as used in case
# $3: item name for error message
# ------------------------------------------------------------------------------

function check_value_enumeraton {
  case "$1" in
    $2) return 0;;
    __unset__) return 0;;
    *) echo "ERROR: Illegal value $1 for $3. Valid is '$2'."; return 1;;
  esac
}

# ------------------------------------------------------------------------------
# Check value against a number range
#
# $1: value to check
# $2: lower bound
# $3: upper bound
# $4: item name for error message
# ------------------------------------------------------------------------------

function check_value_range {
  if [ "$1" == "__unset__" ]
  then
    return 0
  fi
  if [ "$1" -lt "$2" ] || [ "$1" -gt "$3" ]
  then
    echo "ERROR: Illegal value $1 for $4. Valid is '$2..$3'."
    return 1
  fi
}

# ------------------------------------------------------------------------------
# Check if a file given in a variable exists
#
# $1: value to check
# $2: item name for error message
# ------------------------------------------------------------------------------

function check_value_file_exists {
  if [ "$1" == "__unset__" ]
  then
    return 0
  fi
  if [ ! -f "$1" ]
  then
    echo "ERROR: File $1 for option $2 does not exists."
    return 1
  fi

}
