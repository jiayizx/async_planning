(define (domain hang-planters)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (tassel_done)
    (hook_done)
    (cords_done)
    (rope_bought)
    (stud_found)
  )

  ;; Step 1: Tie the final decorative tassel at the bottom of the rope
  (:durative-action tie_tassel
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (cords_done)) (at start (rope_bought)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (tassel_done))
            )
  )

  ;; Step 2: Secure the heavy-duty hook into the ceiling joist
  (:durative-action secure_hook
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (stud_found)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (hook_done))
            )
  )

  ;; Step 3: Measure and cut four equal lengths of cotton cord
  (:durative-action cut_cords
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (rope_bought)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (cords_done))
            )
  )

  ;; Step 4: Purchase a spool of macrame rope from the craft store
  (:durative-action buy_rope
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (rope_bought))
            )
  )

  ;; Step 5: Locate a sturdy stud in the ceiling using a sensor
  (:durative-action find_stud
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (stud_found))
            )
  )
)
