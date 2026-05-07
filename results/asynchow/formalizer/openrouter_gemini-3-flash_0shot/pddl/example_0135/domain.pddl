(define (domain psp_download)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (memory_stick_purchased)
    (memory_stick_formatted)
    (firmware_identified)
  )

  (:durative-action purchase_memory_stick
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (memory_stick_purchased))
    )
  )

  (:durative-action format_memory_stick
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending ?s))
      (at start (memory_stick_purchased))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (memory_stick_formatted))
    )
  )

  (:durative-action identify_firmware
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (firmware_identified))
    )
  )
)