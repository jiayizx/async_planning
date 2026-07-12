(define (domain rose-tattoo)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (is_step1 ?s - step) (is_step2 ?s - step) (is_step3 ?s - step) (is_step4 ?s - step) (is_step5 ?s - step)
  (is_step6 ?s - step) (is_step7 ?s - step) (is_step8 ?s - step) (is_step9 ?s - step) (is_step10 ?s - step)
  (is_step11 ?s - step) (is_step12 ?s - step) (is_step13 ?s - step) (is_step14 ?s - step) (is_step15 ?s - step)
  (is_step16 ?s - step) (is_step17 ?s - step) (is_step18 ?s - step) (is_step19 ?s - step) (is_step20 ?s - step)
  (is_step21 ?s - step) (is_step22 ?s - step) (is_step23 ?s - step) (is_step24 ?s - step) (is_step25 ?s - step)
  (is_step26 ?s - step) (is_step27 ?s - step) (is_step28 ?s - step) (is_step29 ?s - step) (is_step30 ?s - step)
  (is_step31 ?s - step) (is_step32 ?s - step) (is_step33 ?s - step) (is_step34 ?s - step) (is_step35 ?s - step)
  (is_step36 ?s - step) (is_step37 ?s - step) (is_step38 ?s - step) (is_step39 ?s - step) (is_step40 ?s - step)
  (is_step41 ?s - step) (is_step42 ?s - step) (is_step43 ?s - step) (is_step44 ?s - step) (is_step45 ?s - step)
  (is_step46 ?s - step) (is_step47 ?s - step) (is_step48 ?s - step) (is_step49 ?s - step) (is_step50 ?s - step)
  (is_step51 ?s - step) (is_step52 ?s - step) (is_step53 ?s - step) (is_step54 ?s - step) (is_step55 ?s - step)
  (is_step56 ?s - step) (is_step57 ?s - step) (is_step58 ?s - step) (is_step59 ?s - step) (is_step60 ?s - step)
  (step1_complete) (step2_complete) (step3_complete) (step4_complete) (step5_complete)
  (step6_complete) (step7_complete) (step8_complete) (step9_complete) (step10_complete)
  (step11_complete) (step12_complete) (step13_complete) (step14_complete) (step15_complete)
  (step16_complete) (step17_complete) (step18_complete) (step19_complete) (step20_complete)
  (step21_complete) (step22_complete) (step23_complete) (step24_complete) (step25_complete)
  (step26_complete) (step27_complete) (step28_complete) (step29_complete) (step30_complete)
  (step31_complete) (step32_complete) (step33_complete) (step34_complete) (step35_complete)
  (step36_complete) (step37_complete) (step38_complete) (step39_complete) (step40_complete)
  (step41_complete) (step42_complete) (step43_complete) (step44_complete) (step45_complete)
  (step46_complete) (step47_complete) (step48_complete) (step49_complete) (step50_complete)
  (step51_complete) (step52_complete) (step53_complete) (step54_complete) (step55_complete)
  (step56_complete) (step57_complete) (step58_complete) (step59_complete) (step60_complete)
  (rose_tattoo_complete)
 )
 (:durative-action do_step1
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is_step1 ?s)) (at start (step15_complete)) (at start (step37_complete)) (at start (step45_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_complete))))
 (:durative-action do_step2
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is_step2 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_complete))))
 (:durative-action do_step3
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step3 ?s)) (at start (step7_complete)) (at start (step20_complete)) (at start (step48_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_complete))))
 (:durative-action do_step4
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is_step4 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_complete))))
 (:durative-action do_step5
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step5 ?s)) (at start (step12_complete)) (at start (step16_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_complete))))
 (:durative-action do_step6
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is_step6 ?s)) (at start (step15_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_complete))))
 (:durative-action do_step7
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is_step7 ?s)) (at start (step13_complete)) (at start (step27_complete)) (at start (step32_complete)) (at start (step34_complete)) (at start (step59_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_complete))))
 (:durative-action do_step8
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is_step8 ?s)) (at start (step26_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_complete))))
 (:durative-action do_step9
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is_step9 ?s)) (at start (step22_complete)) (at start (step29_complete)) (at start (step58_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_complete)) (at end (rose_tattoo_complete))))
 (:durative-action do_step10
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is_step10 ?s)) (at start (step36_complete)) (at start (step50_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_complete))))
 (:durative-action do_step11
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is_step11 ?s)) (at start (step28_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_complete))))
 (:durative-action do_step12
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is_step12 ?s)) (at start (step4_complete)) (at start (step24_complete)) (at start (step55_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_complete))))
 (:durative-action do_step13
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step13 ?s)) (at start (step57_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_complete))))
 (:durative-action do_step14
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is_step14 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_complete))))
 (:durative-action do_step15
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is_step15 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_complete))))
 (:durative-action do_step16
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is_step16 ?s)) (at start (step28_complete)) (at start (step59_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_complete))))
 (:durative-action do_step17
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is_step17 ?s)) (at start (step5_complete)) (at start (step13_complete)) (at start (step37_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_complete))))
 (:durative-action do_step18
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is_step18 ?s)) (at start (step20_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_complete))))
 (:durative-action do_step19
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is_step19 ?s)) (at start (step24_complete)) (at start (step37_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_complete))))
 (:durative-action do_step20
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is_step20 ?s)) (at start (step7_complete)) (at start (step36_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_complete))))
 (:durative-action do_step21
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (is_step21 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_complete))))
 (:durative-action do_step22
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (is_step22 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_complete))))
 (:durative-action do_step23
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is_step23 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_complete))))
 (:durative-action do_step24
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is_step24 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_complete))))
 (:durative-action do_step25
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is_step25 ?s)) (at start (step22_complete)) (at start (step47_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_complete))))
 (:durative-action do_step26
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step26 ?s)) (at start (step16_complete)) (at start (step33_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_complete))))
 (:durative-action do_step27
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step27 ?s)) (at start (step24_complete)) (at start (step60_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_complete))))
 (:durative-action do_step28
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is_step28 ?s)) (at start (step6_complete)) (at start (step24_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_complete))))
 (:durative-action do_step29
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is_step29 ?s)) (at start (step12_complete)) (at start (step21_complete)) (at start (step24_complete)) (at start (step32_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_complete))))
 (:durative-action do_step30
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is_step30 ?s)) (at start (step16_complete)) (at start (step50_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_complete))))
 (:durative-action do_step31
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step31 ?s)) (at start (step15_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step31_complete))))
 (:durative-action do_step32
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step32 ?s)) (at start (step21_complete)) (at start (step24_complete)) (at start (step45_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step32_complete))))
 (:durative-action do_step33
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step33 ?s)) (at start (step40_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step33_complete))))
 (:durative-action do_step34
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step34 ?s)) (at start (step2_complete)) (at start (step14_complete)) (at start (step38_complete)) (at start (step43_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step34_complete))))
 (:durative-action do_step35
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is_step35 ?s)) (at start (step21_complete)) (at start (step40_complete)) (at start (step48_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step35_complete))))
 (:durative-action do_step36
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (is_step36 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step36_complete))))
 (:durative-action do_step37
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is_step37 ?s)) (at start (step57_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step37_complete))))
 (:durative-action do_step38
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step38 ?s)) (at start (step28_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step38_complete))))
 (:durative-action do_step39
  :parameters (?s - step) :duration (= ?duration 2400)
  :condition (and (at start (step_pending ?s)) (at start (is_step39 ?s)) (at start (step30_complete)) (at start (step33_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step39_complete))))
 (:durative-action do_step40
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is_step40 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step40_complete))))
 (:durative-action do_step41
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is_step41 ?s)) (at start (step1_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step41_complete))))
 (:durative-action do_step42
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is_step42 ?s)) (at start (step35_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step42_complete))))
 (:durative-action do_step43
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step43 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step43_complete))))
 (:durative-action do_step44
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (is_step44 ?s)) (at start (step18_complete)) (at start (step20_complete)) (at start (step24_complete)) (at start (step53_complete)) (at start (step56_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step44_complete))))
 (:durative-action do_step45
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (is_step45 ?s)) (at start (step6_complete)) (at start (step51_complete)) (at start (step53_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step45_complete))))
 (:durative-action do_step46
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (is_step46 ?s)) (at start (step16_complete)) (at start (step19_complete)) (at start (step50_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step46_complete))))
 (:durative-action do_step47
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step47 ?s)) (at start (step13_complete)) (at start (step48_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step47_complete))))
 (:durative-action do_step48
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (step_pending ?s)) (at start (is_step48 ?s)) (at start (step23_complete)) (at start (step29_complete)) (at start (step51_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step48_complete))))
 (:durative-action do_step49
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step49 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step49_complete))))
 (:durative-action do_step50
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (is_step50 ?s)) (at start (step49_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step50_complete))))
 (:durative-action do_step51
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (is_step51 ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step51_complete))))
 (:durative-action do_step52
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is_step52 ?s)) (at start (step2_complete)) (at start (step23_complete)) (at start (step39_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step52_complete))))
 (:durative-action do_step53
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step53 ?s)) (at start (step19_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step53_complete))))
 (:durative-action do_step54
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (is_step54 ?s)) (at start (step13_complete)) (at start (step30_complete)) (at start (step40_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step54_complete))))
 (:durative-action do_step55
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step55 ?s)) (at start (step37_complete)) (at start (step49_complete)) (at start (step59_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step55_complete))))
 (:durative-action do_step56
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step56 ?s)) (at start (step4_complete)) (at start (step49_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step56_complete))))
 (:durative-action do_step57
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (is_step57 ?s)) (at start (step49_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step57_complete))))
 (:durative-action do_step58
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is_step58 ?s)) (at start (step2_complete)) (at start (step8_complete)) (at start (step46_complete)) (at start (step53_complete)) (at start (step57_complete)) (at start (step60_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step58_complete))))
 (:durative-action do_step59
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (is_step59 ?s)) (at start (step31_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step59_complete))))
 (:durative-action do_step60
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (is_step60 ?s)) (at start (step37_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step60_complete))))
)