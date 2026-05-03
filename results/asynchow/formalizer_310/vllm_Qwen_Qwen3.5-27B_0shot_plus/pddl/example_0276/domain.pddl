(define (domain scribblenauts_puzzle_1_1)
  (:requirements :durative-actions)
  
  (:predicates
    (look_hint_pending)
    (look_hint_done)
    (give_policeman_pending)
    (give_policeman_done)
    (give_chef_pending)
    (give_chef_done)
    (give_doctor_pending)
    (give_doctor_done)
    (give_fireman_pending)
    (give_fireman_done)
    (drag_object_pending)
    (drag_object_done)
    (get_starite_pending)
    (get_starite_done)
  )

  (:durative-action look_hint
    :parameters ()
    :duration (= ?duration 2)
    :condition (at start (look_hint_pending))
    :effect (and (at start (not (look_hint_pending))) (at end (look_hint_done)))
  )

  (:durative-action give_policeman
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (give_policeman_pending)) (at start (look_hint_done)))
    :effect (and (at start (not (give_policeman_pending))) (at end (give_policeman_done)))
  )

  (:durative-action give_chef
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (give_chef_pending)) (at start (look_hint_done)))
    :effect (and (at start (not (give_chef_pending))) (at end (give_chef_done)))
  )

  (:durative-action give_doctor
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (give_doctor_pending)) (at start (look_hint_done)))
    :effect (and (at start (not (give_doctor_pending))) (at end (give_doctor_done)))
  )

  (:durative-action give_fireman
    :parameters ()
    :duration (= ?duration 4)
    :condition (and (at start (give_fireman_pending)) (at start (look_hint_done)))
    :effect (and (at start (not (give_fireman_pending))) (at end (give_fireman_done)))
  )

  (:durative-action drag_object
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (drag_object_pending))
                    (at start (give_policeman_done))
                    (at start (give_chef_done))
                    (at start (give_doctor_done))
                    (at start (give_fireman_done)))
    :effect (and (at start (not (drag_object_pending))) (at end (drag_object_done)))
  )

  (:durative-action get_starite
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (get_starite_pending)) (at start (drag_object_done)))
    :effect (and (at start (not (get_starite_pending))) (at end (get_starite_done)))
  )
)
