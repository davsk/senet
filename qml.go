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
	component, err := engine.LoadFile("../../qml/SenetWindow/SenetWindow.qml")
	if err != nil {
		log.Println("Error loading file.")
		return err
	}
	window := component.CreateWindow(nil)
	window.Show()
	window.Wait()

	return nil
}
