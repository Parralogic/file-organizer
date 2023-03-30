#!/bin/bash
#Creator: David Parra-Sandoval
#Date: 03/29/2023
#Last Modified: 03/30/2023
clear

until [[ $YESNO = [yY]* ]]; do
echo "Place this script in the root-directory or inside a folder to make the layout."
echo -e "\e[92m"
pwd
echo -e "\e[00m"
read -p "Is this the correct root-directory or the right folder for the layout?[y/n]: " YESNO
if [[ $YESNO = [nN]* ]]; then
exit 1
fi
clear
done
for MONTHS in January February March April May June July August September October November December; do
case $MONTHS in
January) echo $MONTHS
         sleep 2
         mkdir $MONTHS
         cd $MONTHS
         #mkdir {1..31}
         for DAYS in {1..31}; do
         echo -n $DAYS/
         mkdir $DAYS
         sleep .05
         done
         echo

         cd $OLDPWD
         ;;
February) echo $MONTHS
          sleep  2
          mkdir $MONTHS
          cd $MONTHS
          echo -e "\e[31mIs it a common year28days or leap year29days for February?"
          read -p "How many days: " DAYS
          echo -en "\e[00m"
          if [[ $DAYS = 28 ]]; then
          #mkdir {1..28}
          for DAYS in {1..28}; do
          echo -n $DAYS/
          mkdir $DAYS
          sleep .05
          done
          echo
          cd $OLDPWD
          elif [[ $DAYS = 29 ]]; then
          #mkdir {1..29}
          for DAYS in {1..29}; do
          echo -n $DAYS/
          mkdir $DAYS
          sleep .05
          done
          echo
          cd $OLDPWD
          else echo "Not a valid number"
          exit 1
          fi
          ;;
March) echo $MONTHS
       sleep 2
       mkdir $MONTHS
       cd $MONTHS
       #mkdir {1..31}
       for DAYS in {1..31}; do
       echo -n $DAYS/
       mkdir $DAYS
       sleep .05
       done
       echo

       cd $OLDPWD
       ;;
April) echo $MONTHS
       sleep 2
       mkdir $MONTHS
       cd $MONTHS
       #mkdir {1..30}
       for DAYS in {1..30}; do
       echo -n $DAYS/
       mkdir $DAYS
       sleep .05
       done
       echo

       cd $OLDPWD
       ;;
May) echo $MONTHS
     sleep 2
     mkdir $MONTHS
     cd $MONTHS
     #mkdir {1..31}
     for DAYS in {1..31}; do
     echo -n $DAYS/
     mkdir $DAYS
     sleep .05
     done
     echo

     cd $OLDPWD
     ;;
June) echo $MONTHS
      sleep 2
      mkdir $MONTHS
      cd $MONTHS
      #mkdir {1..30}
      for DAYS in {1..30}; do
      echo -n $DAYS/
      mkdir $DAYS
      sleep .05
      done
      echo

      cd $OLDPWD
      ;;
July) echo $MONTHS
      sleep 2
      mkdir $MONTHS
      cd $MONTHS
      #mkdir {1..31}
      for DAYS in {1..31}; do
      echo -n $DAYS/
      mkdir $DAYS
      sleep .05
      done
      echo

      cd $OLDPWD
      ;;
August) echo $MONTHS
        sleep 2
        mkdir $MONTHS
        cd $MONTHS
        #mkdir {1..31}
        for DAYS in {1..31}; do
        echo -n $DAYS/
        mkdir $DAYS
        sleep .05
        done
        echo

        cd $OLDPWD
        ;;
September) echo $MONTHS
           sleep 2
           mkdir $MONTHS
           cd $MONTHS
           #mkdir {1..30}
           for DAYS in {1..30}; do
           echo -n $DAYS/
           mkdir $DAYS
           sleep .05
           done
           echo

           cd $OLDPWD
           ;;
October) echo $MONTHS
         sleep 2
         mkdir $MONTHS
         cd $MONTHS
         #mkdir {1..31}
         for DAYS in {1..31}; do
         echo -n $DAYS/
         mkdir $DAYS
         sleep .05
         done
         echo

         cd $OLDPWD
         ;;
November) echo $MONTHS
          sleep 2
          mkdir $MONTHS
          cd $MONTHS
          #mkdir {1..30}
          for DAYS in {1..30}; do
          echo -n $DAYS/
          mkdir $DAYS
          sleep .05
          done
          echo

          cd $OLDPWD
          ;;
December) echo $MONTHS
          sleep 2
          mkdir $MONTHS
          cd $MONTHS
          #mkdir {1..31}
          for DAYS in {1..31}; do
          echo -n $DAYS/
          mkdir $DAYS
          sleep .05
          done
          echo

          cd $OLDPWD
          ;;
esac
done
echo "Great! layout created."
echo "Now you can just run/execute the file-organizer.sh script"
