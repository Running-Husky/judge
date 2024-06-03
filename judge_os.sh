#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # 检查当前操作系统是 Ubuntu、Debian 还是 CentOS
  if command -v lsb_release > /dev/null; then
    if [[ $(lsb_release -si) == "Ubuntu" ]]; then
      echo "This is Ubuntu"
    elif [[ $(lsb_release -si) == "Debian" ]]; then
      echo "This is Debian"
    elif [[ $(lsb_release -si) == "CentOS" ]]; then
      echo "This is CentOS"
    fi
  else
    if [[ -f /etc/os-release ]]; then
      if grep -q "NAME=\"Ubuntu\"" /etc/os-release; then
        echo "This is Ubuntu"
      elif grep -q "NAME=\"Debian\"" /etc/os-release; then
        echo "This is Debian"
      elif grep -q "NAME=\"CentOS\"" /etc/os-release; then
        echo "This is CentOS"
      fi
    fi
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # 检查当前操作系统是 macOS
  echo "This is macOS"
elif [[ "$OSTYPE" == "cygwin" ]]; then
  # 检查当前操作系统是 Cygwin
  echo "This is Cygwin"
elif [[ "$OSTYPE" == "msys" ]]; then
  # 检查当前操作系统是 Windows
  echo "This is Windows"
elif [[ "$OSTYPE" == "win32" ]]; then
  # 检查当前操作系统是 Windows
  echo "This is Windows"
else
  echo "Unknown operating system"
fi