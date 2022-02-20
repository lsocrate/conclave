import gleam/list.{map}
import ecs/entity.{Entity}

// fn ready(entity: Entity) {
//   Entity(
//     ..entity,
//     components: map(
//       entity.components,
//       with: fn(c) {
//         case c {
//           component.Card(_position, face_side) ->
//             component.Card(position: component.Ready, face_side: face_side)
//           other -> other
//         }
//       },
//     ),
//   )
// }
pub fn step_ready_and_return(entities: List(Entity)) {
  todo
  // map(entities, with: ready)
}
