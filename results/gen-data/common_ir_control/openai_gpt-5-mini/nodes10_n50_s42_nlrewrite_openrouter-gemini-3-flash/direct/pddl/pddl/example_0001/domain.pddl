(define (domain add_product)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (step_complete ?s - step)
  )

  ; Step 1
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 604800) ; 1 week
    :condition (at start (and (step_pending ?s) (step_complete step6)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step_complete ?s))
            )
  )

  ; Step 2
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (at start (and (step_pending ?s) (step_complete step7)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step_complete ?s))
            )
  )

  ; Step 3
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (and (step_pending ?s) (step_complete step2)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step_complete ?s))
            )
  )

  ; Step 4
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending ?s) (step_complete step3)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step_complete ?s))
            )
  )

  ; Step 5
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 345600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step_complete ?s))
            )
  )

  ; Step 6
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 28800)
    :condition (at start (and (step_pending ?s) (step_complete step4)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step_complete ?s))
            )
  )

  ; Step 7
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 1209600) ; 2 weeks
    :condition (at start (and (step_pending ?s) (step_complete step5)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step_complete ?s))
            )
  )

  ; Step 8
  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 7776000) ; 3 months (assumed 90 days)
    :condition (at start (and (step_pending ?s) (step_complete step2)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step_complete ?s))
            )
  )

  ; Step 9
  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 864000)
    :condition (at start (and (step_pending ?s) (step_complete step5) (step_complete step10)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step_complete ?s))
            )
  )

  ; Step 10
  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 604800) ; 1 week
    :condition (at start (and (step_pending ?s) (step_complete step5)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (step_complete ?s))
            )
  )
)
