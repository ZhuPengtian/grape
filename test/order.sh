flex syntax3.l
echo "Flex Over"
bison -vdty compiler2.y
echo "Yacc Over"
g++ -std=c++11 -o compiler ../source/TableNode.cpp tree.cpp Praser.cpp middleCode.cpp tools.cpp Optimize.cpp lex.yy.c y.tab.c
echo "compiler Over"
./compiler test.c