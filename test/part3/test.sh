#!/bin/zsh

make
echo "Compilation complete\n\nRunning tests"

echo "Hello World" > sample
cat sample | ./ft_cat > res
diff sample res

echo "" > sample
cat sample | ./ft_cat > res
diff sample res

touch sample
cat sample | ./ft_cat > res
diff sample res

./ft_cat Makefile > res
diff Makefile res

make fclean
rm res sample
