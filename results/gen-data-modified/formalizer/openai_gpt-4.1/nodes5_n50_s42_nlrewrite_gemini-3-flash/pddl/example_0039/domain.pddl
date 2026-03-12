(define (domain body_measurements)
  (:requirements :durative-actions)
  (:predicates
    (locate_tape_pending)
    (locate_tape_done)
    (measure_circum_pending)
    (measure_circum_done)
    (put_on_clothes_pending)
    (put_on_clothes_done)
    (log_data_pending)
    (log_data_done)
    (record_notepad_pending)
    (record_notepad_done)
  )

  (:durative-action locate_tape
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (locate_tape_pending))
    :effect (and (at start (not (locate_tape_pending))) (at end (locate_tape_done)))
  )

  (:durative-action measure_circum
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (measure_circum_pending))
                    (at start (locate_tape_done))
                    (at start (put_on_clothes_done)))
    :effect (and (at start (not (measure_circum_pending))) (at end (measure_circum_done)))
  )

  (:durative-action put_on_clothes
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (put_on_clothes_pending))
    :effect (and (at start (not (put_on_clothes_pending))) (at end (put_on_clothes_done)))
  )

  (:durative-action log_data
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (log_data_pending))
                    (at start (record_notepad_done)))
    :effect (and (at start (not (log_data_pending))) (at end (log_data_done)))
  )

  (:durative-action record_notepad
    :parameters ()
    :duration (= ?duration 240)
    :condition (at start (record_notepad_pending))
    :effect (and (at start (not (record_notepad_pending))) (at end (record_notepad_done)))
  )
)
