import component/agenda.{AgendaProps}
import component/card.{CardProps}
import component/colored.{ColoredProps}
import component/piece.{PieceProps}
import component/player.{PlayerProps}
import component/player_controlled.{PlayerControlledProps}

pub type Component {
  Agenda(props: AgendaProps)
  Card(props: CardProps)
  Colored(props: ColoredProps)
  Piece(props: PieceProps)
  Player(props: PlayerProps)
  PlayerControlled(props: PlayerControlledProps)
  AtStartOfTurnStep
  Game
}
