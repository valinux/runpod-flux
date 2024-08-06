# runpod-flux
Install Flux on ComfyUI on runpod by black-forest-labs Image AI Generator 

<b>######_Requirements_####</b>
<br></br>
runpod account from runpod.io 
<br></br>
YOU NEED:
<br></br>
RTX 3090 - Community cloud 0.22hr
<br></br>
37 GB RAM
<br></br>
50 GB Disk !!!!!!!!This needs to be edited on your template ADD 50GB of SPACE!!!!!!!!!
<br></br>
!!!!!Use ComfyUI template!!!!!!!!! "ashleykza/comfyui:2.3.5"
<br></br>

##################
<br></br>
Go to your huddingface account at:
<br></br>
https://huggingface.co/settings/profile
<br></br>
!!!!!!!!Create an access token with all privilages needed to download the files needed to run flux.!!!!!!!!!
<br></br>
EDIT install33.sh WITH THE ACCESS TOKEN YOU GOT FROM HUGGING FACE
<br></br>
connect to port 8888 on runpod
<br></br>
upload install33.sh anywhere on the server
<br></br>
run the command: bash install33.sh 
{% highlight bash %}
bash install33.sh
{% endhighlight %}
<br></br>
<br></br>
##################
<br></br>
NOW CONNECT TO PORT 3000 ON YOUR RUNPOD SERVER.
<br></br>
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
![https://example.com/path/to/image.png](https://github.com/valinux/runpod-flux/blob/main/Screenshot%202024-08-06%20135141.png)

![image.png](https://github.com/valinux/runpod-flux/blob/main/Screenshot%202024-08-06%20135150.png)


AFTER THAT CLICK [Queue Prompt]

