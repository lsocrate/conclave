import ecs/entity.{Entity}
import gleam/map.{Map}
import ecs/component.{Component}

pub opaque type Register {
  Register(
    next_id: Int,
    entities: Map(Int, Entity),
    components: Map(Component, Entity),
  )
}

pub fn init() -> Register {
  Register(next_id: 0, entities: map.new(), components: map.new())
}

pub fn create(reg: Register) {
  let new_entity = entity.Entity(id: reg.next_id)
  let new_register =
    Register(
      ..reg,
      next_id: reg.next_id + 1,
      entities: map.insert(
        into: reg.entities,
        for: new_entity.id,
        insert: new_entity,
      ),
    )
  #(new_register, new_entity)
}

pub fn emplace(reg: Register, entity: Entity, component: Component) -> Register {
  Register(
    ..reg,
    components: map.insert(into: reg.components, for: component, insert: entity),
  )
}
