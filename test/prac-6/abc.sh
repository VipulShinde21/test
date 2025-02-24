#!/bin/bash

echo "Enter the name of the RPM file:"
read RPM

echo "Select a task from the menu:"

select TASK in "Check for which package this comes from" \
               "Check if the RPM is installed" \
               "Install this RPM" \
               "Remove this RPM"
do
    case $REPLY in
        1) rpm -qf $RPM* ;;
        2) rpm -qa | grep $RPM* ;;
        3) rpm -ivh $RPM* ;;
        4) rpm -e $RPM ;;
        *) echo "Invalid choice"; exit 1 ;;
    esac

    if [ -n "$TASK" ]; then
        echo "You have selected: $TASK"
        break
    else
        echo "Invalid choice, please try again."
    fi
done

