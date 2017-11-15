@echo off
call mvn eclipse:clean
call mvn eclipse:eclipse -U -DdownloadSources=true -DdownloadJavadocs=false
@pause