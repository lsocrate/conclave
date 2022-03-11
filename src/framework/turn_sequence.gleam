import entity/world.{World}
import entity/prompt
import entity/turn
import gleam/io

pub fn advance(world: World) -> World {
  case world.turn {
    turn.Turn(phase) ->
      case phase {
        turn.BeginningPhase(turn.CityDeckStep) ->
          World(
            ..world,
            turn: turn.Turn(turn.BeginningPhase(turn.StartOfTurnStep)),
          )
        turn.BeginningPhase(turn.StartOfTurnStep) ->
          World(
            ..world,
            turn: turn.Turn(turn.BeginningPhase(turn.ReadyAndReturnStep)),
          )
        turn.BeginningPhase(turn.ReadyAndReturnStep) ->
          World(
            ..world,
            turn: turn.Turn(turn.ActionPhase(turn.ActionPhaseStep)),
          )
        turn.ActionPhase(_) ->
          World(
            ..world,
            turn: turn.Turn(turn.EndPhase(turn.TorporAndMendingStep)),
          )
        turn.EndPhase(turn.TorporAndMendingStep) ->
          World(..world, turn: turn.Turn(turn.EndPhase(turn.EndOfTurnStep)))
        turn.EndPhase(turn.EndOfTurnStep) ->
          World(..world, turn: turn.Turn(turn.EndPhase(turn.AntagonistStep)))
        turn.EndPhase(turn.AntagonistStep) ->
          World(..world, turn: turn.Turn(turn.EndPhase(turn.DrawStep)))
        turn.EndPhase(turn.DrawStep) ->
          World(
            ..world,
            turn: turn.Turn(turn.EndPhase(turn.DrawStep)),
            prompt: prompt.SinglePlayerPrompt("Finish turn"),
          )
      }
  }
}
