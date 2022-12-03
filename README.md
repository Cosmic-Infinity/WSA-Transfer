# WSA-Transfer

Winodws Subsystem for Android runs on Hyper-V, a virtualization platform by Microsoft. If that rings a bell, you'd know that the storage used by WSA is encrypted and is not be accessible to the user.

So you have this shiny new app that you want to tranfer into WSA for installation but you can't transfer it into the damn thing. Oh well, one way could be through FTP but really, unless you have 3 minutes to waste, you're probably looking for an elegant solution.

Enter the very desciptively named _"WSA Transfer"_. It transfers files to Windows Subsystem for Android by a simple Drag 'n Drop.

<br/>

## Teach me Senpai

Prerequisite : Enable Developer Mode from WSA Settings. You need to do this only once.


![Screenshot (34)](https://user-images.githubusercontent.com/64971616/192135909-cb8ab870-c512-4b1e-978e-2d53b114e37f.png)


1. Click-hold the file you want to transfer.
<p align="center"> <img align = "center" src="https://user-images.githubusercontent.com/64971616/192134452-0619ee20-e79d-4892-a8e0-219ee31823e8.png">
</p>

2. Drag it over to _"Transfer to WSA.bat"_ and drop it.
<p align="center"><img align = "center" src="https://user-images.githubusercontent.com/64971616/192135484-23efc940-531e-46ba-8bd2-709143163fe6.png">
</p>

That's it! Your file will be waiting in the `Downloads` folder within WSA.


## How it be?

I mean, it's literally 4 lines of code, so I guess there's noting much in terms of explanaing.


The transfer is taking place via ADB (Android Debug Bridge). Once the "Dveloper Mode" is eneabled in WSA Settings, by default an adb server is opened on `127.0.0.1` port `58526`.

The batch file is simply conecting to this adb instance and running an `adb push` to the Downloads folder for the dropped file.

Nothing fancy. 

I'd recommend keeping a shortcut to this little scipt with a fancy name, maybe with a fancy icon, on Desktop if you move a lot of files to WSA regularly.
