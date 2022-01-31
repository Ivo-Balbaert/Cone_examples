@echo off
@echo Compiling, linking and executing a cone program:
start /b conec %1
set a=%~n1
set b=.obj
set obj=%a%%b%
start /wait /b gcc stdio.o %obj% -no-pie -o %~n1
@echo Output:
start /wait /b %~n1