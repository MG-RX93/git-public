#!/bin/bash
function installHomebrew() {
  echo "$(tput setaf 3)-----------------------------------"
  echo "$(tput setaf 3)|                                 |"
  echo "$(tput setaf 3)|         Install Brew            |"
  echo "$(tput setaf 3)|                                 |"
  echo "$(tput setaf 3)-----------------------------------"
  tput setaf 6
  which -s brew
  if [[ $? != 0 ]]; then
    echo
    echo "$(tput setaf 2)Installing brew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo
    echo "$(tput setaf 2)brew installed already, updating brew..."
    brew update
    # Run the below option manually.
    # brew upgrade
  fi
  echo
  tput setaf 7
}