(define (domain tuna_patties)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (drained)
    (diced)
    (flaked)
    (whisked)
    (mixed_breadcrumbs)
    (combined)
    (formed)
    (hydrated)
    (fried)
    (sauce_ready)
  )

  ; Step 1: Drain the liquid from the canned tuna (120s)
  (:durative-action do_step1_drain
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (drained))
    )
  )

  ; Step 2: Finely dice the celery and onions (600s)
  (:durative-action do_step2_dice
    :duration (= ?duration 600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (diced))
    )
  )

  ; Step 3: Flake the tuna into a large mixing bowl (180s)
  (:durative-action do_step3_flake
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (drained)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (flaked))
    )
  )

  ; Step 4: Whisk eggs and lemon juice in a small bowl (120s)
  (:durative-action do_step4_whisk
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (drained)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (whisked))
    )
  )

  ; Step 5: Mix the egg wash with breadcrumbs and spices (240s)
  (:durative-action do_step5_mix_breadcrumbs
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step5)) (at start (whisked)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (mixed_breadcrumbs))
    )
  )

  ; Step 6: Combine the tuna and diced vegetables (300s)
  (:durative-action do_step6_combine
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (diced)) (at start (flaked)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (combined))
    )
  )

  ; Step 7: Form the mixture into small round patties (480s)
  (:durative-action do_step7_form
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step7)) (at start (combined)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (formed))
    )
  )

  ; Step 8: Let the breadcrumb mixture hydrate (600s)
  (:durative-action do_step8_hydrate
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step8)) (at start (mixed_breadcrumbs)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (hydrated))
    )
  )

  ; Step 9: Pan-fry the patties until golden brown (720s)
  (:durative-action do_step9_fry
    :duration (= ?duration 720)
    :condition (and (at start (step_pending step9)) (at start (formed)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (fried))
    )
  )

  ; Step 10: Prepare the dipping sauce (300s)
  (:durative-action do_step10_sauce
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step10)) (at start (flaked)) (at start (whisked)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (sauce_ready))
    )
  )
)
