#!/bin/bash

echo "	███╗░░██╗██╗░██████╗░██╗░░██╗████████╗  ███████╗██╗██╗░░░░░████████╗███████╗██████╗░"
echo "	████╗░██║██║██╔════╝░██║░░██║╚══██╔══╝  ██╔════╝██║██║░░░░░╚══██╔══╝██╔════╝██╔══██╗"
echo "	██╔██╗██║██║██║░░██╗░███████║░░░██║░░░  █████╗░░██║██║░░░░░░░░██║░░░█████╗░░██████╔╝"
echo "	██║╚████║██║██║░░╚██╗██╔══██║░░░██║░░░  ██╔══╝░░██║██║░░░░░░░░██║░░░██╔══╝░░██╔══██╗"
echo "	██║░╚███║██║╚██████╔╝██║░░██║░░░██║░░░  ██║░░░░░██║███████╗░░░██║░░░███████╗██║░░██║"
echo "	╚═╝░░╚══╝╚═╝░╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░  ╚═╝░░░░░╚═╝╚══════╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝"
echo "                                                               Created by Delson        "
RAND="redshift"
dpkg -s $RAND &> /dev/null

if [ $? -eq 0 ]; then
    echo "Package  is installed!"
else
    sudo apt-get install redshift -y
    sudo apt-get install redshift-gtk -y
    clear
    echo "Successfully Installed"

fi


while [ $? -eq 0 ]
echo "***Enter values between 2000 to 6000*** "
echo "***Preferably set the value to 4000 ***"
read -p "Enter value: "  value
do
    if [ "$value" -ge 2000 ] && [ "$value" -le 6500 ]; then
        echo "***NOTE:"
        echo "***1.) To exit Press CTRL C   -----DO NOT PRESS CTRL Z to exit----"
        echo "***2.) If you have PRESSED CTRL Z , the program will not exit properly"
        echo "***3.) But Once you Restart your Computer, Your Screen will be back to Normal"
        redshift -l 18.969049:72.821182 -t $value:$value
        killall redshift
        echo " "
        echo "Succesfully Exited!!!"
        
        break

    else
        echo "***Enter values between 2000 to 6000*** "
        echo "***Preferably set the value to 4000 ***"

    fi
done
