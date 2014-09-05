#! /bin/bash

create_shell()
{
  if (( $# != 1 )); then
    echo "只能帶入檔名"
    return 1
  fi

  if [[ -e $1 ]]; then
    echo "檔案已存在"
    return 1
  fi

  local filename=$1

  case $filename in
    *.sh)
      echo -e "#! /bin/bash\n" >> $filename && chmod +x $filename
      echo "檔案已產生 [ $filename ]"
      ls
      ;;
    *)
      echo "僅能產生sh檔"
      return 1
      ;;
  esac
}

