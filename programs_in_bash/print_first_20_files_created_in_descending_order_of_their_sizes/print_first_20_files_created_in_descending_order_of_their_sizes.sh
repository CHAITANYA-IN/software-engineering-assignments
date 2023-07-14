IFS=$'\n'
F=($(ls -lUt "$1" | head -n 20))
for i in ${F[@]}
do
    IFS=$' '
    C=($i)
    echo "${C[4]} ${C[8]}" >> "a.txt"
done
sort -rn a.txt
rm a.txt

# Alternative : find "$1" -type f -maxdepth 1 -mtime -20 -print0 | xargs -0 ls -lhS | head -n 10
# ls -lUht path | 
# Path : ./Accessibles
# -type value for `value` type item to be searched
# -maxdepth value recursively search till depth `value`
# -mtime for last modified time
# -ve value for atmost n days
# -print0 for printing lines and ending them with null character
# -0 for scan with null character as delimiter
# -l for overall info
# -h for actual size
# -S for sorting by size
# -n value for top `value` records