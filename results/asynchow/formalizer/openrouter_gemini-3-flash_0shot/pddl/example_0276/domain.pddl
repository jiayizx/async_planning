(define (domain scribblenauts_puzzle)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (hint_viewed)
    (policeman_given)
    (chef_given)
    (doctor_given)
    (fireman_given)
    (object_dragged)
    (starite_obtained)
  )

  (:durative-action look_at_hint
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hint_viewed)))
  )

  (:durative-action give_policeman
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (hint_viewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (policeman_given)))
  )

  (:durative-action give_chef
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (hint_viewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (chef_given)))
  )

  (:durative-action give_doctor
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (hint_viewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (doctor_given)))
  )

  (:durative-action give_fireman
    :parameters (?s - step)
    :duration (= ?duration 4)
    :condition (and (at start (step_pending ?s)) (at start (hint_viewed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fireman_given)))
  )

  (:durative-action drag_object
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) 
                    (at start (policeman_given)) 
                    (at start (chef_given)) 
                    (at start (doctor_given)) 
                    (at start (fireman_given)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (object_dragged)))
  )

  (:durative-action get_starite
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s)) (at start (object_dragged)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (starite_obtained)))
  )
)