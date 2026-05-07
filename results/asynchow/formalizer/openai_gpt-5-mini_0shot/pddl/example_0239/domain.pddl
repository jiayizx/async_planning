(define (domain hello-kitty-party)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates produced by each step
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)

    ; final semantic predicate (produced by the last action in the ordering chain)
    (party_organized)
  )

  ; Step 1: Use daughter's theme toys as centerpieces and tie balloons to them. (30 min = 1800s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step1_done))
              (at end (party_organized))
            )
  )

  ; Step 2: Use a lot of theme foil balloons along with solid colored latex balloons. (3600s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step2_done))
            )
  )

  ; Step 3: Get Hello Kitty party supplies (20 min = 1200s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step3_done))
            )
  )

  ; Step 4: Hang cutouts from the ceiling. (45 min = 2700s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step4_done))
            )
  )

  ; Step 5: Make a large bow out of cardboard (3600s)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step5_done))
            )
  )
)
