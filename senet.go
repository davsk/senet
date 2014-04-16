// senetgame.go

package main

import (
	//"dasa.cc/universe/engine"
	//"dasa.cc/universe/senet"
	"log"
	//"runtime"
)

func main() {
	//runtime.LockOSThread()
	InitSteam()

	if err := InitQml(); err != nil {
		log.Fatal(err)
	} else {
		// engine.Run(senet.Doit)
	}
}
