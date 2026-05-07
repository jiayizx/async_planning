(define (domain go-to-party)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    ;; per-step pending/done predicates
    (pending1) (done1)
    (pending2) (done2)
    (pending3) (done3)
    (pending4) (done4)
    (pending5) (done5)
    (pending6) (done6)
    (pending7) (done7)

    ;; semantic predicates for causal constraints
    (invited_done)
    (costume_shopped_done)
    (makeup_shopped_done)
    (dressed_done)
    (drove_done)
    (parked_done)
    (entered_done)
  )

  ;; Step 1: be invited (600s)
  (:durative-action do_step1
    :duration (= ?duration 600)
    :condition (at start (pending1))
    :effect (and
              (at start (not (pending1)))
              (at end (done1))
              (at end (invited_done))
            )
  )

  ;; Step 2: shop for a party costume (7200s)
  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (and (at start (pending2)) (at start (invited_done)))
    :effect (and
              (at start (not (pending2)))
              (at end (done2))
              (at end (costume_shopped_done))
            )
  )

  ;; Step 3: shop for makeup (3600s)
  (:durative-action do_step3
    :duration (= ?duration 3600)
    :condition (and (at start (pending3)) (at start (invited_done)))
    :effect (and
              (at start (not (pending3)))
              (at end (done3))
              (at end (makeup_shopped_done))
            )
  )

  ;; Step 4: put on costume and make up (3600s)
  (:durative-action do_step4
    :duration (= ?duration 3600)
    :condition (and (at start (pending4)) (at start (costume_shopped_done)) (at start (makeup_shopped_done)))
    :effect (and
              (at start (not (pending4)))
              (at end (done4))
              (at end (dressed_done))
            )
  )

  ;; Step 5: drive to the party venue (1800s)
  (:durative-action do_step5
    :duration (= ?duration 1800)
    :condition (and (at start (pending5)) (at start (dressed_done)))
    :effect (and
              (at start (not (pending5)))
              (at end (done5))
              (at end (drove_done))
            )
  )

  ;; Step 6: park the car (180s)
  (:durative-action do_step6
    :duration (= ?duration 180)
    :condition (and (at start (pending6)) (at start (drove_done)))
    :effect (and
              (at start (not (pending6)))
              (at end (done6))
              (at end (parked_done))
            )
  )

  ;; Step 7: enter the party venue (180s)
  (:durative-action do_step7
    :duration (= ?duration 180)
    :condition (and (at start (pending7)) (at start (parked_done)))
    :effect (and
              (at start (not (pending7)))
              (at end (done7))
              (at end (entered_done))
            )
  )
)
