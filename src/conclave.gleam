import entity/prompt
import entity/turn
import entity/world
import gleam/io
import framework/turn_sequence

pub fn main() {
  world.World(
    prompt: prompt.NoPrompt,
    turn: turn.Turn(turn.BeginningPhase(turn.CityDeckStep)),
  )
  |> loop()
}

fn loop(world: world.World) -> world.World {
  case world.prompt {
    prompt.SinglePlayerPrompt(_) ->
      world
      |> io.debug()
    _ ->
      turn_sequence.advance(world)
      |> loop()
  }
}
