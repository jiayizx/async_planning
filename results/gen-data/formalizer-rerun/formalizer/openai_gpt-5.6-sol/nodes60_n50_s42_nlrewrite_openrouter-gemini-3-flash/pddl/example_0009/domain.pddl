(define (domain over-the-hill-cake)
 (:requirements :typing :durative-actions)
 (:types step - object
  step1_type step2_type step3_type step4_type step5_type step6_type step7_type step8_type step9_type step10_type
  step11_type step12_type step13_type step14_type step15_type step16_type step17_type step18_type step19_type step20_type
  step21_type step22_type step23_type step24_type step25_type step26_type step27_type step28_type step29_type step30_type
  step31_type step32_type step33_type step34_type step35_type step36_type step37_type step38_type step39_type step40_type
  step41_type step42_type step43_type step44_type step45_type step46_type step47_type step48_type step49_type step50_type
  step51_type step52_type step53_type step54_type step55_type step56_type step57_type step58_type step59_type step60_type - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (s1_complete) (s2_complete) (s3_complete) (s4_complete) (s5_complete) (s6_complete) (s7_complete) (s8_complete) (s9_complete) (s10_complete)
  (s11_complete) (s12_complete) (s13_complete) (s14_complete) (s15_complete) (s16_complete) (s17_complete) (s18_complete) (s19_complete) (s20_complete)
  (s21_complete) (s22_complete) (s23_complete) (s24_complete) (s25_complete) (s26_complete) (s27_complete) (s28_complete) (s29_complete) (s30_complete)
  (s31_complete) (s32_complete) (s33_complete) (s34_complete) (s35_complete) (s36_complete) (s37_complete) (s38_complete) (s39_complete) (s40_complete)
  (s41_complete) (s42_complete) (s43_complete) (s44_complete) (s45_complete) (s46_complete) (s47_complete) (s48_complete) (s49_complete) (s50_complete)
  (s51_complete) (s52_complete) (s53_complete) (s54_complete) (s55_complete) (s56_complete) (s57_complete) (s58_complete) (s59_complete) (s60_complete))

 (:durative-action do_step1
  :parameters (?s - step1_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s30_complete)) (at start (s37_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_complete))))
 (:durative-action do_step2
  :parameters (?s - step2_type) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_complete))))
 (:durative-action do_step3
  :parameters (?s - step3_type) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (s9_complete)) (at start (s11_complete)) (at start (s60_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_complete))))
 (:durative-action do_step4
  :parameters (?s - step4_type) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s22_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_complete))))
 (:durative-action do_step5
  :parameters (?s - step5_type) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_complete))))
 (:durative-action do_step6
  :parameters (?s - step6_type) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s11_complete)) (at start (s13_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_complete))))
 (:durative-action do_step7
  :parameters (?s - step7_type) :duration (= ?duration 2700)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_complete))))
 (:durative-action do_step8
  :parameters (?s - step8_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s13_complete)) (at start (s22_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_complete))))
 (:durative-action do_step9
  :parameters (?s - step9_type) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (s15_complete)) (at start (s18_complete)) (at start (s21_complete)) (at start (s22_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_complete))))
 (:durative-action do_step10
  :parameters (?s - step10_type) :duration (= ?duration 1500)
  :condition (and (at start (step_pending ?s)) (at start (s35_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_complete))))
 (:durative-action do_step11
  :parameters (?s - step11_type) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s32_complete)) (at start (s48_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_complete))))
 (:durative-action do_step12
  :parameters (?s - step12_type) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s21_complete)) (at start (s28_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_complete))))
 (:durative-action do_step13
  :parameters (?s - step13_type) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_complete))))
 (:durative-action do_step14
  :parameters (?s - step14_type) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (s6_complete)) (at start (s26_complete)) (at start (s37_complete)) (at start (s45_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_complete))))
 (:durative-action do_step15
  :parameters (?s - step15_type) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s14_complete)) (at start (s53_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_complete))))
 (:durative-action do_step16
  :parameters (?s - step16_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s21_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_complete))))
 (:durative-action do_step17
  :parameters (?s - step17_type) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (s5_complete)) (at start (s48_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_complete))))
 (:durative-action do_step18
  :parameters (?s - step18_type) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s8_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_complete))))
 (:durative-action do_step19
  :parameters (?s - step19_type) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (s41_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_complete))))
 (:durative-action do_step20
  :parameters (?s - step20_type) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s41_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_complete))))
 (:durative-action do_step21
  :parameters (?s - step21_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s7_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_complete))))
 (:durative-action do_step22
  :parameters (?s - step22_type) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_complete))))
 (:durative-action do_step23
  :parameters (?s - step23_type) :duration (= ?duration 1500)
  :condition (and (at start (step_pending ?s)) (at start (s8_complete)) (at start (s27_complete)) (at start (s33_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_complete))))
 (:durative-action do_step24
  :parameters (?s - step24_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s25_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_complete))))
 (:durative-action do_step25
  :parameters (?s - step25_type) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s7_complete)) (at start (s19_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_complete))))
 (:durative-action do_step26
  :parameters (?s - step26_type) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s35_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_complete))))
 (:durative-action do_step27
  :parameters (?s - step27_type) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s41_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_complete))))
 (:durative-action do_step28
  :parameters (?s - step28_type) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (s60_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_complete))))
 (:durative-action do_step29
  :parameters (?s - step29_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s2_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_complete))))
 (:durative-action do_step30
  :parameters (?s - step30_type) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s14_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_complete))))
 (:durative-action do_step31
  :parameters (?s - step31_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s39_complete)) (at start (s46_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s31_complete))))
 (:durative-action do_step32
  :parameters (?s - step32_type) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s32_complete))))
 (:durative-action do_step33
  :parameters (?s - step33_type) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (s58_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s33_complete))))
 (:durative-action do_step34
  :parameters (?s - step34_type) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s7_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s34_complete))))
 (:durative-action do_step35
  :parameters (?s - step35_type) :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s35_complete))))
 (:durative-action do_step36
  :parameters (?s - step36_type) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s20_complete)) (at start (s28_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s36_complete))))
 (:durative-action do_step37
  :parameters (?s - step37_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s7_complete)) (at start (s26_complete)) (at start (s53_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s37_complete))))
 (:durative-action do_step38
  :parameters (?s - step38_type) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s10_complete)) (at start (s27_complete)) (at start (s31_complete)) (at start (s32_complete)) (at start (s35_complete)) (at start (s46_complete)) (at start (s53_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s38_complete))))
 (:durative-action do_step39
  :parameters (?s - step39_type) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s10_complete)) (at start (s28_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s39_complete))))
 (:durative-action do_step40
  :parameters (?s - step40_type) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s21_complete)) (at start (s22_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s40_complete))))
 (:durative-action do_step41
  :parameters (?s - step41_type) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s41_complete))))
 (:durative-action do_step42
  :parameters (?s - step42_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s7_complete)) (at start (s13_complete)) (at start (s47_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s42_complete))))
 (:durative-action do_step43
  :parameters (?s - step43_type) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s43_complete))))
 (:durative-action do_step44
  :parameters (?s - step44_type) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (s39_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s44_complete))))
 (:durative-action do_step45
  :parameters (?s - step45_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s27_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s45_complete))))
 (:durative-action do_step46
  :parameters (?s - step46_type) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s46_complete))))
 (:durative-action do_step47
  :parameters (?s - step47_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s32_complete)) (at start (s45_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s47_complete))))
 (:durative-action do_step48
  :parameters (?s - step48_type) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s48_complete))))
 (:durative-action do_step49
  :parameters (?s - step49_type) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s12_complete)) (at start (s13_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s49_complete))))
 (:durative-action do_step50
  :parameters (?s - step50_type) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (s43_complete)) (at start (s55_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s50_complete))))
 (:durative-action do_step51
  :parameters (?s - step51_type) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (s21_complete)) (at start (s23_complete)) (at start (s49_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s51_complete))))
 (:durative-action do_step52
  :parameters (?s - step52_type) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s25_complete)) (at start (s38_complete)) (at start (s44_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s52_complete))))
 (:durative-action do_step53
  :parameters (?s - step53_type) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s53_complete))))
 (:durative-action do_step54
  :parameters (?s - step54_type) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (s22_complete)) (at start (s59_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s54_complete))))
 (:durative-action do_step55
  :parameters (?s - step55_type) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s55_complete))))
 (:durative-action do_step56
  :parameters (?s - step56_type) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (s13_complete)) (at start (s27_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s56_complete))))
 (:durative-action do_step57
  :parameters (?s - step57_type) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (s60_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s57_complete))))
 (:durative-action do_step58
  :parameters (?s - step58_type) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (s2_complete)) (at start (s14_complete)) (at start (s30_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s58_complete))))
 (:durative-action do_step59
  :parameters (?s - step59_type) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (s20_complete)) (at start (s21_complete)) (at start (s29_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s59_complete))))
 (:durative-action do_step60
  :parameters (?s - step60_type) :duration (= ?duration 1500)
  :condition (and (at start (step_pending ?s)) (at start (s37_complete)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s60_complete))))
)