#!/bin/bash
if [ -f $1 ]
then
    IFS=$'\r\n' read -d '' -r -a L < "$1"
    for line in ${L[@]:1:${#L[@]}}
    do
        IFS=,
        W=($line)
        echo -e "BEGIN:VCARD\nVERSION:3.0" >> "$2.vcf"
        echo -e "N:${W[1]};${W[0]};;;\nFN:${W[0]} ${W[1]}\nTEL;TYPE=HOME;VOICE:${W[2]}\nEMAIL;TYPE=INTERNET:${W[3]}" >> "$2.vcf"
        echo -e "END:VCARD\n" >> "$2.vcf"
    done
else
    echo "Argument is not a file path"
fi

# Data = {
# 			'Cell':'TEL;CELL;VOICE:{Cell_Phone_Number}', 
# 			'Name': 'N:{Last_Name};{First_Name};{Middle_Name};{Designation}',
# 			'Full Name': 'FN:{Designation} {First_Name} {Middle_Name} {Last_Name}',
# 			'Email': 'EMAIL;TYPE=INTERNET:{Email}', 
# 			'Preferred Email': 'EMAIL;PREF;TYPE=INTERNET:{Prefered_Email}',
# 			'Nickname': 'NICKNAME:{Nickname}',
# 			'Address': 'ADDR;TYPE=HOME:;;',
# 			'Website': 'URL;TYPE=HOME:{URL}',
# 			'Phone': 'TEL;TYPE=HOME;VOICE:{Phone_Number}', 
# 			'Fax': 'TEL;TYPE=HOME;FAX:{Fax_Number}'
# 		}