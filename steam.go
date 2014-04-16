// steam.go

package main

import (
	"github.com/go-steam/steam"
)

var isSteam bool

func InitSteam() bool {
	isSteam = steam.IsSteamRunning()

	return isSteam
}

func CloseSteam() {
	if isSteam {
		steam.Shutdown()
	}
}
