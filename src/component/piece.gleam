pub type Status {
  InPlay
  OutOfPlay
}

pub type PieceProps {
  PieceProps(status: Status)
}

pub fn in_play() {
  PieceProps(InPlay)
}
