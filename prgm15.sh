calculate()
{
First_num=$num1
operator=$op
Second_num=$num2
operator=$op
case $operator in
+) result=$(($First_num + $Second_num)) ;;
-) result=$(($First_num - $Second_num)) ;;
\*) result=$(($First_num * $Second_num)) ;;
/) result=$(($First_num / $Second_num)) ;;
%) result=$(($First_num % $Second_num)) ;;
*) echo "Invalid operation"; exit 1 ;;
esac
echo "Result: $result"
}
echo "Enter first number:"
read num1
echo "Enter an operator(+,-,*,/,%):"
read op
echo "Enter second number:"
read num2
calculate $num1 $op $num2 
