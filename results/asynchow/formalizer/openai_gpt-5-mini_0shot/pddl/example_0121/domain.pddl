(define (domain learn-sloths)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (opened_browser)
    (searched_sloths)
    (videos_selected)
    (websites_selected)
    (zoo_found)
  )

  ; Step 1: open up a web browser (25s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 25)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (opened_browser))
            )
  )

  ; Step 2: do a search for sloths (35s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 35)
    :condition (and (at start (step_pending step2)) (at start (opened_browser)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (searched_sloths))
            )
  )

  ; Step 3: select some videos about sloths (300s)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (searched_sloths)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (videos_selected))
            )
  )

  ; Step 4: select some websites about sloths (120s)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (searched_sloths)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (websites_selected))
            )
  )

  ; Step 5: find a local zoo with sloths (300s)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (videos_selected)) (at start (websites_selected)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (zoo_found))
            )
  )
)
