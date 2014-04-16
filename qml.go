// qml.go

package main

import (
	"gopkg.in/v0/qml"
	"log"
	"os"
)

//BUG(david) QML file must be completed and connected.

// initQml runs the dialogs.
func InitQml() error {
	qml.Init(nil)
	engine := qml.NewEngine()
	engine.On("quit", func() { os.Exit(0) })
	component, err := engine.LoadFile("data/senet.qml")
	if err != nil {
		log.Println("Error loading file.")
		return err
	}
	window := component.CreateWindow(nil)

	if isSteam {
		// BUG(david) enable qml Network menu Item.
	}

	//BUG(david) Listen for Activate Menu items.

	window.Show()
	window.Wait()

	return nil
}
