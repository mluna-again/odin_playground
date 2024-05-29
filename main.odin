package main

import rl "vendor:raylib"

State :: struct {
  running: bool
}

main :: proc() {
  rl.InitWindow(300, 300, "Playground")
  rl.SetTargetFPS(120)

  state := State{running = true}
  player := rl.Vector2{10, 10}
  psize := rl.Vector2{30, 30}

  for state.running {
    input()
    update(&state)
    render()
  }

  rl.CloseWindow()
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
