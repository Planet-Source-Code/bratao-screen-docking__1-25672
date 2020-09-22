<div align="center">

## Screen Docking


</div>

### Description

This module shows how to dock a form to the screen and reserve screen space so maximized windows can't cover it. All the other code I looked at had a ton of un-needed garbage in it.
 
### More Info
 
All you need to do is pass the "Dock" function a form, what part of the screen to dock to, and a variable to receive the returned data.

This code reserves screen space the size of your form, depending on where you dock it, this will shift everything else, like maximized windows and all your desktop icons. If, for instance, you make your form height the same as your screen height, all your icons and your task bar will be pushed off the bottom of your screen. Also if you don't call the "UnDock" function when your program closes the space reserved for your program will remain reserved even afrer your program is closed.


<span>             |<span>
---                |---
**Submitted On**   |2001-07-30 19:38:18
**By**             |[Bratao](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByAuthor/bratao.md)
**Level**          |Advanced
**User Rating**    |4.9 (89 globes from 18 users)
**Compatibility**  |VB 6\.0
**Category**       |[Windows API Call/ Explanation](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByCategory/windows-api-call-explanation__1-39.md)
**World**          |[Visual Basic](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByWorld/visual-basic.md)
**Archive File**   |[Screen Doc237907302001\.zip](https://github.com/Planet-Source-Code/bratao-screen-docking__1-25672/archive/master.zip)








