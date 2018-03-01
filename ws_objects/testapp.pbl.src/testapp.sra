$PBExportHeader$testapp.sra
$PBExportComments$Generated Application Object
forward
global type testapp from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type testapp from application
string appname = "testapp"
end type
global testapp testapp

on testapp.create
appname="testapp"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on testapp.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_test)
//---878989--
//refresh
end event

