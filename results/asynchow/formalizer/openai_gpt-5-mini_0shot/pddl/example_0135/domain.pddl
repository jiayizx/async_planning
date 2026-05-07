(define (domain download-psp-games)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates produced by each action
    (purchase_done)
    (format_done)
    (firmware_checked)
  )

  ; Step 1: Purchase a memory stick (5 min = 300 seconds)
  (:durative-action do_step1_purchase
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (purchase_done))
    )
  )

  ; Step 2: Format your PSP memory stick (10 min = 600 seconds)
  ; Requires step1 (purchase) to be done before starting
  (:durative-action do_step2_format
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (purchase_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (format_done))
    )
  )

  ; Step 3: Find out what firmware you have installed (2 min = 120 seconds)
  ; Independent step (no predecessors)
  (:durative-action do_step3_check_firmware
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (firmware_checked))
    )
  )
)
