(define (domain breakfast)
  (:requirements :durative-actions :typing)
  (:types step)
  (:constants s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 - step)
  (:predicates (step_pending ?s - step) (done ?s - step))
  
  (:durative-action do_step1
    :duration (= ?duration 30)
    :condition (at start (step_pending s1))
    :effect (and (at start (not (step_pending s1))) (at end (done s1)))
  )
  (:durative-action do_step2
    :duration (= ?duration 15)
    :condition (and (at start (step_pending s2)) (at start (done s1)) (at start (done s5)) (at start (done s7)) (at start (done s11)) (at start (done s13)))
    :effect (and (at start (not (step_pending s2))) (at end (done s2)))
  )
  (:durative-action do_step3
    :duration (= ?duration 5)
    :condition (and (at start (step_pending s3)) (at start (done s1)) (at start (done s2)) (at start (done s5)) (at start (done s7)) (at start (done s11)) (at start (done s13)))
    :effect (and (at start (not (step_pending s3))) (at end (done s3)))
  )
  (:durative-action do_step4
    :duration (= ?duration 10)
    :condition (and (at start (step_pending s4)) (at start (done s1)) (at start (done s2)) (at start (done s3)) (at start (done s5)) (at start (done s7)) (at start (done s11)) (at start (done s13)))
    :effect (and (at start (not (step_pending s4))) (at end (done s4)))
  )
  (:durative-action do_step5
    :duration (= ?duration 10)
    :condition (and (at start (step_pending s5)) (at start (done s1)))
    :effect (and (at start (not (step_pending s5))) (at end (done s5)))
  )
  (:durative-action do_step6
    :duration (= ?duration 480)
    :condition (and (at start (step_pending s6)) (at start (done s1)) (at start (done s2)) (at start (done s3)) (at start (done s4)) (at start (done s5)) (at start (done s7)) (at start (done s9)) (at start (done s10)) (at start (done s11)) (at start (done s13)) (at start (done s14)))
    :effect (and (at start (not (step_pending s6))) (at end (done s6)))
  )
  (:durative-action do_step7
    :duration (= ?duration 20)
    :condition (and (at start (step_pending s7)) (at start (done s1)) (at start (done s5)) (at start (done s13)))
    :effect (and (at start (not (step_pending s7))) (at end (done s7)))
  )
  (:durative-action do_step8
    :duration (= ?duration 5)
    :condition (and (at start (step_pending s8)) (at start (done s1)) (at start (done s2)) (at start (done s3)) (at start (done s4)) (at start (done s5)) (at start (done s7)) (at start (done s11)) (at start (done s13)))
    :effect (and (at start (not (step_pending s8))) (at end (done s8)))
  )
  (:durative-action do_step9
    :duration (= ?duration 60)
    :condition (and (at start (step_pending s9)) (at start (done s1)) (at start (done s2)) (at start (done s3)) (at start (done s4)) (at start (done s5)) (at start (done s7)) (at start (done s10)) (at start (done s11)) (at start (done s13)))
    :effect (and (at start (not (step_pending s9))) (at end (done s9)))
  )
  (:durative-action do_step10
    :duration (= ?duration 30)
    :condition (and (at start (step_pending s10)) (at start (done s1)) (at start (done s2)) (at start (done s3)) (at start (done s4)) (at start (done s5)) (at start (done s7)) (at start (done s11)) (at start (done s13)))
    :effect (and (at start (not (step_pending s10))) (at end (done s10)))
  )
  (:durative-action do_step11
    :duration (= ?duration 2)
    :condition (and (at start (step_pending s11)) (at start (done s1)) (at start (done s5)) (at start (done s7)) (at start (done s13)))
    :effect (and (at start (not (step_pending s11))) (at end (done s11)))
  )
  (:durative-action do_step12
    :duration (= ?duration 10)
    :condition (and (at start (step_pending s12)) (at start (done s1)) (at start (done s2)) (at start (done s3)) (at start (done s4)) (at start (done s5)) (at start (done s7)) (at start (done s8)) (at start (done s11)) (at start (done s13)))
    :effect (and (at start (not (step_pending s12))) (at end (done s12)))
  )
  (:durative-action do_step13
    :duration (= ?duration 120)
    :condition (and (at start (step_pending s13)) (at start (done s1)) (at start (done s5)))
    :effect (and (at start (not (step_pending s13))) (at end (done s13)))
  )
  (:durative-action do_step14
    :duration (= ?duration 20)
    :condition (at start (step_pending s14))
    :effect (and (at start (not (step_pending s14))) (at end (done s14)))
  )
  (:durative-action do_step15
    :duration (= ?duration 45)
    :condition (and (at start (step_pending s15)) (at start (done s1)) (at start (done s2)) (at start (done s3)) (at start (done s4)) (at start (done s5)) (at start (done s6)) (at start (done s7)) (at start (done s9)) (at start (done s10)) (at start (done s11)) (at start (done s13)) (at start (done s14)))
    :effect (and (at start (not (step_pending s15))) (at end (done s15)))
  )
)