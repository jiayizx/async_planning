(define (domain freelance_extra_income)
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
    (done10)
    (done11)
    (done12)
    (done13)
    (done14)
    (done15)
    (done16)
    (done17)
    (done18)
    (done19)
    (done20)
  )

  (:durative-action do_step1
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step1)) (at start (done4)) (at start (done6)) (at start (done16)) (at start (done13))))

  (:durative-action do_step2
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step2))))

  (:durative-action do_step3
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step3))))

  (:durative-action do_step4
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending step4)) (at start (done16)) (at start (done13))))

  (:durative-action do_step5
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step5)) (at start (done3))))

  (:durative-action do_step6
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step6)) (at start (done4)) (at start (done16)) (at start (done13))))

  (:durative-action do_step7
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step7))))

  (:durative-action do_step8
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step8)) (at start (done3)) (at start (done4)) (at start (done5)) (at start (done9)) (at start (done12)) (at start (done13)) (at start (done16))))

  (:durative-action do_step9
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step9)) (at start (done12)) (at start (done4)) (at start (done16)) (at start (done13))))

  (:durative-action do_step10
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step10)) (at start (done1)) (at start (done4)) (at start (done6)) (at start (done16)) (at start (done13))))

  (:durative-action do_step11
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step11))))

  (:durative-action do_step12
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step12)) (at start (done4)) (at start (done16)) (at start (done13))))

  (:durative-action do_step13
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step13))))

  (:durative-action do_step14
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step14)) (at start (done7))))

  (:durative-action do_step15
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step15)) (at start (done19)) (at start (done11))))

  (:durative-action do_step16
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step16)) (at start (done13))))

  (:durative-action do_step17
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17))))

  (:durative-action do_step18
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step18)) (at start (done2))))

  (:durative-action do_step19
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step19)) (at start (done11))))

  (:durative-action do_step20
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step20)) (at start (done17))))

  ;; Effects: moved after all action condition declarations to avoid mismatched parentheses earlier
  (:durative-action do_step1_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step1)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (done1))))

  (:durative-action do_step2_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step2)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (done2))))

  (:durative-action do_step3_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step3)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (done3))))

  (:durative-action do_step4_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step4)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (done4))))

  (:durative-action do_step5_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step5)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (done5))))

  (:durative-action do_step6_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step6)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (done6))))

  (:durative-action do_step7_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step7)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (done7))))

  (:durative-action do_step8_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step8)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (done8))))

  (:durative-action do_step9_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step9)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (done9))))

  (:durative-action do_step10_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step10)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (done10))))

  (:durative-action do_step11_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step11)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (done11))))

  (:durative-action do_step12_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step12)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (done12))))

  (:durative-action do_step13_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step13)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (done13))))

  (:durative-action do_step14_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step14)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (done14))))

  (:durative-action do_step15_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step15)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (done15))))

  (:durative-action do_step16_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step16)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (done16))))

  (:durative-action do_step17_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step17)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (done17))))

  (:durative-action do_step18_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step18)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (done18))))

  (:durative-action do_step19_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step19)))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (done19))))

  (:durative-action do_step20_effects
    :duration (= ?duration 0)
    :condition (and (at start (step_pending step20)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (done20))))
)
