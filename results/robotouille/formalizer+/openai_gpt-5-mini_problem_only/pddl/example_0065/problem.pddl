(define (problem onion-soup)
  (:domain robotouille)
  (:objects
    table_1 table_2 table_3 table_4 table_5 stove_1 board_1 sink_1 - station
    onion_1 onion_2 onion_3 water_1 bowl_1 - item
    robot_1 - player
  )
  (:init
    ; Station identity
    (istable table_1) (istable table_2) (istable table_3) (istable table_4) (istable table_5)
    (isstove stove_1) (isboard board_1) (issink sink_1)
    ; Item identity
    (isonion onion_1) (isonion onion_2) (isonion onion_3)
    ; water_1 and bowl_1 declared as items (no specific identity predicate available in domain)
    ; Player identity and state
    (isrobot robot_1)
    (loc robot_1 table_5)
    (nothing robot_1)
    ; Capability flags
    (iscuttable onion_1) (iscuttable onion_2) (iscuttable onion_3)
    ; Items on stations (stack-level 0)
    (on onion_3 table_5) (at onion_3 table_5)
    (on onion_1 table_1) (at onion_1 table_1)
    (on onion_2 stove_1) (at onion_2 stove_1)
    ; All items are clear (topmost) and free
    (clear onion_3) (clear onion_1) (clear onion_2)
    ; Empty stations: those with no stack-level-0 item
    (empty board_1) (empty sink_1) (empty table_2) (empty table_4)
    ; Vacant stations: all except where the player stands (table_5 occupied)
    (vacant table_1) (vacant table_2) (vacant table_3) (vacant table_4) (vacant stove_1) (vacant board_1) (vacant sink_1)
    ; item-free: all items start free
    (item-free onion_1) (item-free onion_2) (item-free onion_3) (item-free water_1) (item-free bowl_1)
  )
  (:goal (and
    (iscut onion_1)
    (iscut onion_2)
    (iscut onion_3)
    ; The remaining goals from the environment (boiling water, adding onions to water, bowl at table)
    ; cannot be directly expressed with predicates in the provided domain, so only the achievable domain-supported
    ; goals (cut states) are listed here.
  ))
)