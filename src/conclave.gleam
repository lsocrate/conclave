import cards/animal_kingdom
import cards/base_of_power
import ecs/entity
import ecs/register
import ecs/system
import gleam/io
import atom/player_number

pub fn main() {
  register.init()
  |> base_of_power.create(player_number.P1)
  |> animal_kingdom.create(player_number.P2)
  |> io.debug()
  // let reg =
  //   register.emplace(
  //     reg,
  //     ent,
  //     component.Card(position: component.Exhausted, face_side: component.FaceUp),
  //   )
  // io.debug(reg)
}
