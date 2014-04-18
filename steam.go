// steam.go

package main

import (
//"gopkg.in/steam.v0"
)

var isSteam bool

func InitSteam() bool {
	//isSteam = steam.IsSteamRunning()

	return isSteam
}

func CloseSteam() {
	if isSteam {
		//	steam.Shutdown()
	}
}
