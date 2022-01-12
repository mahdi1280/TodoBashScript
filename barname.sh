#!/bin/bash
tasks=""
state=true
echo "if task end you write -1"
echo -n "please enter file name: "
read fileName
echo -n "you new a new file?y/n: "
read n
if [ $n == "y" ]; then
  if [ -f "$fileName.txt" ]; then
      echo "$fileName exists. and removed"
      rm ./$fileName.txt
  else
      echo "$fileName does not exist."
  fi

fi
while [ $state == true ]
do
  echo -n "please enter the task: "
  read -a task

  if [ $task == "-1" ]; then
      state=false
      else
        for (( i = 0; i < ${#task[@]}; i++ )); do
                tasks="$tasks ${task[$i]}"
          done
          echo  $tasks >> $fileName.txt
  fi

  tasks=""
done