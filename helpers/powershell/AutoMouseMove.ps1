﻿cls

Function AutoMoveMouse(){

    Add-Type -AssemblyName System.Windows.Forms
    
    while ($true)
    {
      $Pos = [System.Windows.Forms.Cursor]::Position
      $x = ($pos.X % 500) + 1
      $y = ($pos.Y % 500) + 1
      [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
      Start-Sleep -Seconds 10
    }
}

AutoMoveMouse