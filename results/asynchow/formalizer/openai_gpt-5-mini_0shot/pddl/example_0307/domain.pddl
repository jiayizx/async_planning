(define (domain use-fresh-aloe)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (done6)
    (done7)
    (done8)
    (done9)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step1)) (at start (done2)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (done1))))

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (done2))))

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step3)) (at start (done1)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (done3))))

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (done4))))

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step5)) (at start (done3)) (at start (done4)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (done5))))

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step6)) (at start (done3)) (at start (done4)))
    :effect (and
              (at start (not (step_pending step6)))
              (at end (step_done step6))
              (at end (done6))))

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 420)
    :condition (and (at start (step_pending step7)) (at start (done3)) (at start (done4)))
    :effect (and
              (at start (not (step_pending step7)))
              (at end (step_done step7))
              (at end (done7))))

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (done3)) (at start (done4)))
    :effect (and
              (at start (not (step_pending step8)))
              (at end (step_done step8))
              (at end (done8))))

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step9)) (at start (done3)) (at start (done4)))
    :effect (and
              (at start (not (step_pending step9)))
              (at end (step_done step9))
              (at end (done9))))
)
