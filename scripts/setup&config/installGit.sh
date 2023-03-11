#!/bin/bash

function installGit() {
  echo "$(tput setaf 3)-----------------------------------"
  echo "$(tput setaf 3)|                                 |"
  echo "$(tput setaf 3)|          Install git            |"
  echo "$(tput setaf 3)|                                 |"
  echo "$(tput setaf 3)-----------------------------------"
  tput setaf 6
  #checking to see if salesforce sfdx CLI exists and if not, install it.
  git --version
  if [[ $? != 0 ]]; then
    echo
    echo "$(tput setaf 2)Installing git..."
    read -p "$(tput setaf 3)Enter git package name: " pkgName
    brew install "$pkgName"
  else
    echo
    echo "$(tput setaf 2)git's already installed!!!..."
  fi
  echo
  tput setaf 7
}