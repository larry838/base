@echo off

:INPUT
echo  1.执行clean命令
echo  2.执行package命令
echo  3.执行下载source文件命令
echo  q.退出

echo 请输入要选择的命令：
set /p cmd=
IF %cmd% == 1 GOTO CLEAN
IF %cmd% == 2 GOTO PACKAGE
IF %cmd% == 3 GOTO SOURCES
IF %cmd% == q GOTO END

:CLEAN
call mvn eclipse:clean
call mvn clean
echo ===============================================================================
echo =========================== clean is complete===============================
echo ===============================================================================
GOTO INPUT

:PACKAGE

call mvn clean
call mvn -Dmaven.test.skip=true deploy
echo ===============================================================================
echo =========================== package is complete=============================
echo ===============================================================================
GOTO INPUT

:SOURCES
mvn dependency:sources
echo ===============================================================================
echo =========================== sources is complete=============================
echo ===============================================================================
GOTO INPUT

:END
@pause

