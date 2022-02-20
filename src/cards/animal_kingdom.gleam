import atom/player_number.{PlayerNumber}
import component/agenda
import component/card
import component/piece
import component/player
import component/player_controlled
import ecs/component
import ecs/register.{Register, emplace}

fn maybe_gain_agenda(reg: Register) -> Register {
  reg
}

pub fn create(reg: Register, controller: PlayerNumber) -> Register {
  let #(reg, ent) = register.create(reg)
  reg
  |> emplace(ent, component.Piece(piece.in_play()))
  |> emplace(
    ent,
    component.Card(card.CardProps(card.Ready, card.FaceDown, card.Agenda)),
  )
  |> emplace(
    ent,
    component.PlayerControlled(player_controlled.PlayerControlledProps(
      controller,
    )),
  )
  |> emplace(ent, component.Agenda(agenda.AgendaProps("Animal Kingdom")))
}
