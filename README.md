# Common Tools

A collection of scripts I use across my different linux machines to provide various features.

The documentation for each script is provided within the file itself. 
A description of its dependencies, parameters and user-modifiable variables is also given.

Each script should be self contained with no additional installation process required (other than getting the dependencies). 
The dependencies are usually common softwares present on most Linux distributions. I try to avoid using exotic dependencies to further reduce the amount of installation needed.

---
## Note on portability

Most of these scripts are written to work under **Xorg** on a **Fedora** machine. The dependencies are given through the `dnf` package manager, but a link to the source is usually included.

The distribution you use should not impact much the usability of the scripts, but using another display server implementation than Xorg might make some of them unusable.

---
List of features :
File|Function
-|-
**battery-monitor**|Low battery checker and brightness modifier
**dodo**|Sleept timer with sleep and wake up musics
**screenshot**|Lightweight screenshot utility with a "copy to clipboard" feature
**wallpaper**|Little wallpaper helper
**window-ratio-expand**|Expands the currently used window to 2560x1440 pixels (**works only on i3**)
