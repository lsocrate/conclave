import entity/prompt.{Prompt}
import entity/turn.{Turn}

pub type World {
  World(prompt: Prompt, turn: Turn)
}
