(define (domain pizza-contest)
 (:requirements :typing :durative-actions)
 (:types step t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t60 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (outcome1) (outcome2) (outcome3) (outcome4) (outcome5) (outcome6)
  (outcome7) (outcome8) (outcome9) (outcome10) (outcome11) (outcome12)
  (outcome13) (outcome14) (outcome15) (outcome16) (outcome17) (outcome18)
  (outcome19) (outcome20) (outcome21) (outcome22) (outcome23) (outcome24)
  (outcome25) (outcome26) (outcome27) (outcome28) (outcome29) (outcome30)
  (outcome31) (outcome32) (outcome33) (outcome34) (outcome35) (outcome36)
  (outcome37) (outcome38) (outcome39) (outcome40) (outcome41) (contest_won)
  (outcome43) (outcome44) (outcome45) (outcome46) (outcome47) (outcome48)
  (outcome49) (outcome50) (outcome51) (outcome52) (outcome53) (outcome54)
  (outcome55) (outcome56) (outcome57) (outcome58) (outcome59) (outcome60))

 (:durative-action execute_step1
  :parameters (?s - t1) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (outcome4)) (at start (outcome9)) (at start (outcome53)) (at start (outcome60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome1))))
 (:durative-action execute_step2
  :parameters (?s - t2) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (outcome21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome2))))
 (:durative-action execute_step3
  :parameters (?s - t3) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome3))))
 (:durative-action execute_step4
  :parameters (?s - t4) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (outcome29)) (at start (outcome52)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome4))))
 (:durative-action execute_step5
  :parameters (?s - t5) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (outcome15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome5))))
 (:durative-action execute_step6
  :parameters (?s - t6) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome6))))
 (:durative-action execute_step7
  :parameters (?s - t7) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (outcome10)) (at start (outcome27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome7))))
 (:durative-action execute_step8
  :parameters (?s - t8) :duration (= ?duration 10800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome8))))
 (:durative-action execute_step9
  :parameters (?s - t9) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (outcome21)) (at start (outcome30)) (at start (outcome55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome9))))
 (:durative-action execute_step10
  :parameters (?s - t10) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (outcome44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome10))))
 (:durative-action execute_step11
  :parameters (?s - t11) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (outcome16)) (at start (outcome53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome11))))
 (:durative-action execute_step12
  :parameters (?s - t12) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (outcome40)) (at start (outcome47)) (at start (outcome48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome12))))
 (:durative-action execute_step13
  :parameters (?s - t13) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (outcome19)) (at start (outcome21)) (at start (outcome27)) (at start (outcome49)) (at start (outcome53)) (at start (outcome60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome13))))
 (:durative-action execute_step14
  :parameters (?s - t14) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (outcome3)) (at start (outcome43)) (at start (outcome49)) (at start (outcome51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome14))))
 (:durative-action execute_step15
  :parameters (?s - t15) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (outcome18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome15))))
 (:durative-action execute_step16
  :parameters (?s - t16) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (outcome21)) (at start (outcome47)) (at start (outcome57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome16))))
 (:durative-action execute_step17
  :parameters (?s - t17) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome17))))
 (:durative-action execute_step18
  :parameters (?s - t18) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome18))))
 (:durative-action execute_step19
  :parameters (?s - t19) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (outcome3)) (at start (outcome24)) (at start (outcome48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome19))))
 (:durative-action execute_step20
  :parameters (?s - t20) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (outcome15)) (at start (outcome25)) (at start (outcome40)) (at start (outcome44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome20))))
 (:durative-action execute_step21
  :parameters (?s - t21) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome21))))
 (:durative-action execute_step22
  :parameters (?s - t22) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (outcome6)) (at start (outcome18)) (at start (outcome47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome22))))
 (:durative-action execute_step23
  :parameters (?s - t23) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (outcome26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome23))))
 (:durative-action execute_step24
  :parameters (?s - t24) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (outcome7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome24))))
 (:durative-action execute_step25
  :parameters (?s - t25) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (outcome18)) (at start (outcome33)) (at start (outcome53)) (at start (outcome57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome25))))
 (:durative-action execute_step26
  :parameters (?s - t26) :duration (= ?duration 259200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome26))))
 (:durative-action execute_step27
  :parameters (?s - t27) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome27))))
 (:durative-action execute_step28
  :parameters (?s - t28) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (outcome8)) (at start (outcome44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome28))))
 (:durative-action execute_step29
  :parameters (?s - t29) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (outcome39)) (at start (outcome56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome29))))
 (:durative-action execute_step30
  :parameters (?s - t30) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome30))))
 (:durative-action execute_step31
  :parameters (?s - t31) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (outcome55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome31))))
 (:durative-action execute_step32
  :parameters (?s - t32) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (outcome21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome32))))
 (:durative-action execute_step33
  :parameters (?s - t33) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (outcome8)) (at start (outcome18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome33))))
 (:durative-action execute_step34
  :parameters (?s - t34) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (outcome12)) (at start (outcome30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome34))))
 (:durative-action execute_step35
  :parameters (?s - t35) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (outcome4)) (at start (outcome24)) (at start (outcome57)) (at start (outcome58)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome35))))
 (:durative-action execute_step36
  :parameters (?s - t36) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (outcome19)) (at start (outcome22)) (at start (outcome29)) (at start (outcome60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome36))))
 (:durative-action execute_step37
  :parameters (?s - t37) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (outcome17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome37))))
 (:durative-action execute_step38
  :parameters (?s - t38) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (outcome56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome38))))
 (:durative-action execute_step39
  :parameters (?s - t39) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (outcome38)) (at start (outcome44)) (at start (outcome56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome39))))
 (:durative-action execute_step40
  :parameters (?s - t40) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome40))))
 (:durative-action execute_step41
  :parameters (?s - t41) :duration (= ?duration 43200)
  :condition (and (at start (step_pending ?s)) (at start (outcome6)) (at start (outcome7)) (at start (outcome15)) (at start (outcome26)) (at start (outcome60)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome41))))
 (:durative-action execute_step42
  :parameters (?s - t42) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (outcome1)) (at start (outcome22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (contest_won))))
 (:durative-action execute_step43
  :parameters (?s - t43) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (outcome32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome43))))
 (:durative-action execute_step44
  :parameters (?s - t44) :duration (= ?duration 7200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome44))))
 (:durative-action execute_step45
  :parameters (?s - t45) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (outcome25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome45))))
 (:durative-action execute_step46
  :parameters (?s - t46) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (outcome7)) (at start (outcome57)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome46))))
 (:durative-action execute_step47
  :parameters (?s - t47) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome47))))
 (:durative-action execute_step48
  :parameters (?s - t48) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (outcome21)) (at start (outcome25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome48))))
 (:durative-action execute_step49
  :parameters (?s - t49) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (outcome53)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome49))))
 (:durative-action execute_step50
  :parameters (?s - t50) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (outcome21)) (at start (outcome33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome50))))
 (:durative-action execute_step51
  :parameters (?s - t51) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (outcome3)) (at start (outcome33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome51))))
 (:durative-action execute_step52
  :parameters (?s - t52) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (outcome13)) (at start (outcome25)) (at start (outcome27)) (at start (outcome43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome52))))
 (:durative-action execute_step53
  :parameters (?s - t53) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (outcome27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome53))))
 (:durative-action execute_step54
  :parameters (?s - t54) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (outcome23)) (at start (outcome51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome54))))
 (:durative-action execute_step55
  :parameters (?s - t55) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome55))))
 (:durative-action execute_step56
  :parameters (?s - t56) :duration (= ?duration 86400)
  :condition (and (at start (step_pending ?s)) (at start (outcome37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome56))))
 (:durative-action execute_step57
  :parameters (?s - t57) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (outcome18)) (at start (outcome56)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome57))))
 (:durative-action execute_step58
  :parameters (?s - t58) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (outcome5)) (at start (outcome25)) (at start (outcome30)) (at start (outcome41)) (at start (outcome49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome58))))
 (:durative-action execute_step59
  :parameters (?s - t59) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (outcome10)) (at start (outcome44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome59))))
 (:durative-action execute_step60
  :parameters (?s - t60) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (outcome8)) (at start (outcome18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outcome60))))
)