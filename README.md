# sync_script
Synchronize your files with a folder on remote machine.

This is a quite simple script, it uses the inotifywait to get the updates on files and the rsync to synchronize the updates. So every time when you save any update on any of your files, they will be sent tho you server.

You have to update the sync_script.sh with the follow informations:

1- On line 3 replace ~/local/folder/to_watch to the local folder that you want to watch for updates.

2- The if on line 7 you may add any file extension that you want to watch for updates.

3- On line 13 replace ~/your/ssh/key/Key.pem for your SSH key, ~/local/folder/to_watch for the local folder and  user@35.183.26.143:/folder/remote/machine/ for the folder on your server.

