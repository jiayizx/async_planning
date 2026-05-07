(define (domain wedding)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (band_paid)
               (church_visited)
               (vows_exchanged)
               (kissed_danced)
               (dressed_up)
               (guests_invited)
               (catering_paid)
               (task_done))

  (:durative-action pay_band
    :duration 1200
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (band_paid))))

  (:durative-action go_church
    :duration 120
    :condition (and (at start (step_pending step2))
                    (at start (dressed_up)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (church_visited))))

  (:durative-action exchange_vows
    :duration 3600
    :condition (and (at start (step_pending step3))
                    (at start (church_visited)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (vows_exchanged))))

  (:durative-action kiss_dance
    :duration 7200
    :condition (and (at start (step_pending step4))
                    (at start (vows_exchanged)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (kissed_danced))
                 (at end (task_done))))

  (:durative-action get_dressed
    :duration 300
    :condition (and (at start (step_pending step5))
                    (at start (band_paid))
                    (at start (guests_invited))
                    (at start (catering_paid)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (dressed_up))))

  (:durative-action invite_guests
    :duration 600
    :condition (at start (step_pending step6))
    :effect (and (at start (not (step_pending step6)))
                 (at end (step_done step6))
                 (at end (guests_invited))))

  (:durative-action pay_catering
    :duration 900
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7)))
                 (at end (step_done step7))
                 (at end (catering_paid))))
)