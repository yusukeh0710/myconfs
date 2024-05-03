#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 KEY"
  exit 0
fi

if [ `echo $1 | grep "\.cc"` ]; then
  CC_FILE=$1
else
  CC_FILE=$1.cc
fi

g++-12 -std=gnu++20 -fsanitize=address -fsanitize=undefined -o ./out ${CC_FILE}
if [ $? -ne 0 ]; then
  echo "Compile Error"
  exit 1
fi

key=`echo ${CC_FILE: -4:1}`
for f in ${key}*.txt; do
  echo "------"
  echo "$f"
  echo "output:"

  ./out < $f 2>&1 | tee tmp;

  output=$(cat ./tmp)
  answer=$(cat test/${f/.txt/.out})

  result="WA !!"
  diff <(echo ${output}) <(echo ${answer}) >/dev/null
  if [ $? -eq 0 ]; then
    result="AC"
  fi

  echo "answer: [${result}]"
  echo "${answer}"

  rm tmp
done

cat ${CC_FILE} | xsel --clipboard --input
