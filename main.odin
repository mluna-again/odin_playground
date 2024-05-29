package main

import rl "vendor:raylib"
import "core:fmt"

State :: struct {
  running: bool
}

main :: proc() {
  monitor := rl.GetCurrentMonitor()
  winwidth := rl.GetMonitorWidth(monitor)
  winheight := rl.GetMonitorHeight(monitor)

  // rl.InitWindow(winwidth/4, winheight, "Playground")
  // rl.SetTargetFPS(120)
  // rl.SetWindowPosition(0, 0)
  //
  // state := State{running = true}
  // player := rl.Vector2{10, 10}
  // psize := rl.Vector2{30, 30}
  //
  // for state.running {
  //   input()
  //   update(&state)
  //   render()
  // }
  //
  // rl.CloseWindow()
}

input :: proc() {

}

update :: proc(state: ^State) {
  state.running = !rl.WindowShouldClose()
}

render :: proc() {
  rl.BeginDrawing()
  rl.ClearBackground(rl.WHITE)
  rl.EndDrawing()
}
