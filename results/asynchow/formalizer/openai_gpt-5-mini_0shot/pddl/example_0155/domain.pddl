(define (domain stretch-canvas-shoes)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bags_frozen ?s - step)            ; unique semantic predicate for step1
    (newspapers_stuffed ?s - step)    ; unique semantic predicate for step2
    (socks_ball_stuffed ?s - step)    ; unique semantic predicate for step3
    (stretched)                        ; final semantic predicate (result of last action)
  )

  ;; Step 1: freeze shoes with water-filled bags
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending ?s)) (at start (newspapers_stuffed step2)) (at start (socks_ball_stuffed step3)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (bags_frozen ?s))
              (at end (stretched))
            )
  )

  ;; Step 2: stuff newspapers into toes
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (newspapers_stuffed ?s))
            )
  )

  ;; Step 3: stuff a ball of socks
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (socks_ball_stuffed ?s))
            )
  )
)
