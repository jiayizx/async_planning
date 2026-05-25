(define (domain violin_learning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done_s1)
    (done_s2)
    (done_s3)
    (done_s4)
    (done_s5)
    (done_s6)
    (done_s7)
    (done_s8)
    (done_s9)
    (done_s10)
    (done_s11)
    (done_s12)
    (done_s13)
    (done_s14)
    (done_s15)
    (done_s16)
    (done_s17)
    (done_s18)
    (done_s19)
    (done_s20)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (done_s3)) (at start (done_s6)) (at start (done_s10)) (at start (done_s17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s1)))
  )

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (done_s19)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s2)))
  )

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s3)))
  )

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending ?s)) (at start (done_s9)) (at start (done_s6)) (at start (done_s17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s4)))
  )

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (done_s6)) (at start (done_s7)) (at start (done_s16)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s5)))
  )

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s6)))
  )

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s7)))
  )

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (done_s13)) (at start (done_s6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s8)))
  )

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done_s6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s9)))
  )

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (done_s2)) (at start (done_s4)) (at start (done_s6)) (at start (done_s17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s10)))
  )

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s11)))
  )

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s12)))
  )

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s13)))
  )

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (done_s18)) (at start (done_s6)) (at start (done_s15)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s14)))
  )

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (done_s7)) (at start (done_s11)) (at start (done_s9)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s15)))
  )

  (:durative-action do_step16
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s16)))
  )

  (:durative-action do_step17
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (done_s6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s17)))
  )

  (:durative-action do_step18
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending ?s)) (at start (done_s10)) (at start (done_s17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s18)))
  )

  (:durative-action do_step19
    :parameters (?s - step)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (done_s17)) (at start (done_s9)) (at start (done_s6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s19)))
  )

  (:durative-action do_step20
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (done_s12)) (at start (done_s6)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (done_s20)))
  )
)
