pub type Turn {
  Turn(phase: Phase)
}

pub type Phase {
  BeginningPhase(step: BeginningPhaseStep)
  ActionPhase(step: ActionPhaseStep)
  EndPhase(step: EndPhaseStep)
}

pub type BeginningPhaseStep {
  CityDeckStep
  StartOfTurnStep
  ReadyAndReturnStep
}

pub type ActionPhaseStep {
  ActionPhaseStep
}

pub type EndPhaseStep {
  TorporAndMendingStep
  EndOfTurnStep
  AntagonistStep
  DrawStep
}
