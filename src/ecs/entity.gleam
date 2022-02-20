import gleam/int
import gleam/string

pub type Entity {
  Entity(id: Int)
}

pub fn show(entity: Entity) -> String {
  case entity {
    Entity(id) -> string.append(to: "#", suffix: int.to_base36(id))
  }
}
