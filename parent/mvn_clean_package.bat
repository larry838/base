@echo off

:INPUT
echo  1.ִ��clean����
echo  2.ִ��package����
echo  3.ִ������source�ļ�����
echo  q.�˳�

echo ������Ҫѡ������
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

