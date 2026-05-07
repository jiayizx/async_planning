(define (domain get_better_at_arguing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (arguing_improved)
  )
  
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step1) (step_done step14)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)))
  )
  
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (and (step_pending step2) (step_done step37)))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)))
  )
  
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending step3) (step_done step7) (step_done step8) (step_done step36)))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)))
  )
  
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (and (step_pending step4) (step_done step3) (step_done step24) (step_done step25) (step_done step40)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (arguing_improved)))
  )
  
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step5) (step_done step3) (step_done step14) (step_done step30)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)))
  )
  
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 21600)
    :condition (at start (and (step_pending step6) (step_done step28) (step_done step35)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)))
  )
  
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step7) (step_done step17)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)))
  )
  
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step8) (step_done step31)))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)))
  )
  
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending step9) (step_done step27)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)))
  )
  
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (and (step_pending step10) (step_done step19)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)))
  )
  
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step11))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)))
  )
  
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step12) (step_done step6)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)))
  )
  
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step13))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)))
  )
  
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step14) (step_done step27)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)))
  )
  
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step15) (step_done step20)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)))
  )
  
  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step16) (step_done step3) (step_done step13)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)))
  )
  
  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (and (step_pending step17) (step_done step8)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)))
  )
  
  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step18) (step_done step11)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)))
  )
  
  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)))
  )
  
  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step20) (step_done step2) (step_done step3) (step_done step19) (step_done step21)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)))
  )
  
  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (and (step_pending step21) (step_done step1) (step_done step3) (step_done step7) (step_done step24) (step_done step26)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)))
  )
  
  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step22) (step_done step25)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)))
  )
  
  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step23) (step_done step33)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)))
  )
  
  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending step24) (step_done step29)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)))
  )
  
  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step25) (step_done step3) (step_done step6)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)))
  )
  
  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step26))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)))
  )
  
  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step27))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)))
  )
  
  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 5400)
    :condition (at start (and (step_pending step28) (step_done step23)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)))
  )
  
  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (step_pending step29))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)))
  )
  
  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step30) (step_done step9) (step_done step15)))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)))
  )
  
  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (and (step_pending step31) (step_done step38)))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)))
  )
  
  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step32) (step_done step4) (step_done step22)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)))
  )
  
  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (and (step_pending step33) (step_done step2)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)))
  )
  
  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (and (step_pending step34) (step_done step24) (step_done step37)))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)))
  )
  
  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step35))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)))
  )
  
  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (and (step_pending step36) (step_done step7)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)))
  )
  
  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (and (step_pending step37) (step_done step10) (step_done step13)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)))
  )
  
  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 259200)
    :condition (at start (and (step_pending step38) (step_done step29)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)))
  )
  
  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (and (step_pending step39) (step_done step6) (step_done step9) (step_done step12)))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)))
  )
  
  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step40))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)))
  )
)