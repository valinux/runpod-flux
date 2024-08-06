# runpod-flux
Install Flux on ComfyUI on runpod by black-forest-labs Image AI Generator 

######_Requirements_####

runpod account at runpod.io 
YOU NEED:
RTX 3090 - Community cloud 0.22hr
37 GB RAM
50 GB Disk !!!!!!!!This needs to be edited on your template ADD 50GB of SPACE!!!!!!!!!
!!!!!Use ComfyUI template!!!!!!!!! "ashleykza/comfyui:2.3.5"


##################
Go to your huddingface account at:
https://huggingface.co/settings/profile
!!!!!!!!Create an access token with all privilages needed to download the files needed to run flux.!!!!!!!!!

Once the server is running connect to port 8888 and upload install33.sh anywhere on the server and run the command: bash install33.sh AFTER YOU ADDED WITH YOUR ACCESS TOKEN FROM HUGGINGFACE TO install33.sh

##################
NOW CONNECT TO PORT 3000 ON YOUR RUNPOD SERVER.
GO TO:

1. CLICK ON MANAGER
2. CLICK UPDATE ALL
3. WAIT
4. RESTART ONCE THE UPDATE IS DONE.
5. 
###############
UPLOAD WORKFLOW FILE FROM THIS DEPOSITORY 
workflow.json

USE THE ARROW > TO ADJUST THE SETTINGS
TO ADJUST YOUR WORKFLOW SETTINGS LIKE THIS:
https://github.com/valinux/runpod-flux/blob/main/Screenshot%202024-08-06%20135141.png
https://github.com/valinux/runpod-flux/blob/main/Screenshot%202024-08-06%20135150.png


AFTER THAT CLICK [Queue Prompt]

