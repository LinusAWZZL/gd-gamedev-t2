# gd-gamedev-t2
Gamedev Class Tutorial

## Playtest
- Output
> Display tab Output shows all changes made to project scene. 

> Edit mode: Object moved, properties edited, object create and delete, object reparenting 

> Play mode: Platform initialized, Reached objective (when ship reaches objective area)

## Node manipulation
- Sprite
> Display image/animation/texture of an object

- Rigid vs Static
> Rigid: has properties and sliders for physics

> Static: has no sliders for physics

- Mass vs Weight
> Mass is raw, whereas Weight is mass with gravity

> Tidak jauh berbeda

- CollisionShape2D
> When disabled is On, object no longer interacts with other CollisionShapes

- Node Transform
> Position: relative location from parent object

> Rotation: objects global rotation, object rotates around it's center

> Scale: relative scale of the object and all it's components

> Stone Platform's position is based off of it's position compared to it's parent's center, compared to the viewpoint's location which is global

## New Features
Added new level (level 1) using Kinematic2D and static obstacles

Added UI Elements (menu) for win screen
