############################################################################################################################
#
#    KILL SERVICES / PID NUMBER - 
#
#    To Kill:
#           replace 'Get-Service' with 'Get-Process' AND 'SERVICE NAME' with 'PID NUMBER'    
#
#    Kill AppSense In Ordeer from *Windows Task Manager* and observer process tree from *Process Explorer*:  
#
############################################################################################################################


#Display a list of the system services
Get-Service

#Display a specific system services
Get-Service SERVICE NAME


#List the services that are currently running 
Get-Service | Where {$_.status –eq 'running'}

#Force kill the hung process 
taskkill /F /IM [PID] 


#Start services by name
Get-Service SERVICE NAME | Where {$_.status –eq 'Stopped'} |  Start-Service

#Start multiple services by name
Get-Service SERVICE NAME, SERVICE PROCESS NAME | Where {$_.status –eq 'Stopped'} |  Start-Service


#Stop services by name
Get-Service SERVICE NAME | Where {$_.status –eq 'Running'} |  Stop-Service

#Stop multiple services by name
Get-Service SERVICE NAME, SERVICE PROCESS NAME | Where {$_.status –eq 'Stopped'} |  Stop-Service


############################################################################################################################ 