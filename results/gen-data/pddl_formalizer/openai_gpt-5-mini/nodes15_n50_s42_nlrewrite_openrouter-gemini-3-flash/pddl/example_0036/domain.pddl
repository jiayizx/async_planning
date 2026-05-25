(define (domain make-lox)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_complete)
    (s2_complete)
    (s3_complete)
    (s4_complete)
    (s5_complete)
    (s6_complete)
    (s7_complete)
    (s8_complete)
    (s9_complete)
    (s10_complete)
    (s11_complete)
    (s12_complete)
    (s13_complete)
    (s14_complete)
    (s15_complete)
  )

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1))
                    (at start (s2_complete)) (at start (s3_complete)) (at start (s4_complete)) (at start (s5_complete))
                    (at start (s8_complete)) (at start (s10_complete)) (at start (s11_complete)) (at start (s12_complete))
                    (at start (s13_complete)) (at start (s15_complete)) (at start (s9_complete)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (s1_complete))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (s2_complete))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (s2_complete)) (at start (s8_complete)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (s3_complete))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (s2_complete)) (at start (s3_complete)) (at start (s8_complete)) (at start (s10_complete)) (at start (s12_complete)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (s4_complete))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (s2_complete)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (s5_complete))))

  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step6)) (at start (s7_complete)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (s6_complete))))

  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending step7))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (s7_complete))))

  (:durative-action do_step8
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (s8_complete))))

  (:durative-action do_step9
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending step9))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (s9_complete))))

  (:durative-action do_step10
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending step10))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (s10_complete))))

  (:durative-action do_step11
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step11)) (at start (s2_complete)) (at start (s3_complete)) (at start (s4_complete)) (at start (s8_complete)) (at start (s10_complete)) (at start (s12_complete)) (at start (s13_complete)) (at start (s15_complete)) (at start (s9_complete)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (s11_complete))))

  (:durative-action do_step12
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step12)) (at start (s2_complete)) (at start (s3_complete)) (at start (s8_complete)) (at start (s10_complete)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (s12_complete))))

  (:durative-action do_step13
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step13)) (at start (s2_complete)) (at start (s3_complete)) (at start (s4_complete)) (at start (s8_complete)) (at start (s9_complete)) (at start (s10_complete)) (at start (s12_complete)) (at start (s15_complete)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (s13_complete))))

  (:durative-action do_step14
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step14)) (at start (s2_complete)) (at start (s9_complete)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (s14_complete))))

  (:durative-action do_step15
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (s2_complete)) (at start (s3_complete)) (at start (s8_complete)) (at start (s10_complete)) (at start (s12_complete)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (s15_complete))))
)
