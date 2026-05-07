(define (domain cheap_vacation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (driven_to_front)
    (backpacks_packed)
    (hiked_out)
    (camped_out)
    (hiked_back)
  )

  (:durative-action drive_to_front
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (driven_to_front)))
  )

  (:durative-action pack_backpacks
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (backpacks_packed)))
  )

  (:durative-action hike_out
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (driven_to_front)) (at start (backpacks_packed)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hiked_out)))
  )

  (:durative-action camp_out
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (hiked_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (camped_out)))
  )

  (:durative-action hike_back
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (camped_out)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hiked_back)))
  )
)