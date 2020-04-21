echo "Enter file name"
read file
cat $file
echo "Enter the number"
read n
i=1
for var in `cat  $file`;
do
echo $var
 # x='.pem'
  #fname=$var$x
 #echo $fname
aws ec2 create-key-pair --key-name  $var --query 'KeyMaterial' --output text > $var.pem
    i=$(($i+1))
 if [ $i -gt $n ]
   then
      break
   fi
done
