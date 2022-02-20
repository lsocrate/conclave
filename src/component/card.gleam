pub type Back {
  City
  Library
  Faction
  Haven
  Agenda
}

pub type Side {
  FaceUp
  FaceDown
}

pub type Angle {
  Ready
  Exhausted
}

pub type CardProps {
  CardProps(angle: Angle, side: Side, back: Back)
}
