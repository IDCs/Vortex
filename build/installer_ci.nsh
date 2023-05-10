!include WinVer.nsh
 
!macro preInit
  ${IfNot} ${AtLeastWin10}

    MessageBox MB_ABORTRETRYIGNORE  "Vortex 1.8 and above is not compatible with your operating system.$\r$\n\
Windows 10 or newer is required to run correctly.$\r$\n\
Click $\"Retry$\" for troubleshooting steps (opens in browser).$\r$\n\
Click $\"Ignore$\" to continue anyway." IDRETRY exit IDIGNORE ignore
  Quit
exit:
  ExecShell open "https://forums.nexusmods.com/index.php?/topic/12870396-windows-7881-vortex-will-not-start-up/"
  Quit
ignore:
  Nop

  ${EndIf}
!macroend
