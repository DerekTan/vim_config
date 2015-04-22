@echo indexing now...
@echo off
dir /s/b *.c *.h >cscope.files
echo creating cscope.files
::ctags -R .
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
echo creating tags file
cscope -b
echo creating cscope.out
echo done!
@echo on
