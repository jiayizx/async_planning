(define (domain charge_bmw_key)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (inserted_wireless)
    (plugged_usb)
    (led_illuminated)
  )

  (:durative-action insert_wireless
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (inserted_wireless))
    )
  )

  (:durative-action plug_usb
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (plugged_usb))
    )
  )

  (:durative-action ensure_led
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending ?s))
      (at start (inserted_wireless))
      (at start (plugged_usb))
    )
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (led_illuminated))
    )
  )
)