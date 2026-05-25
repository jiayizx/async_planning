(define (domain beef_tongue)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step) 
    (step_done ?s - step) 
    (step1_done - object) (step2_done - object) (step3_done - object) (step4_done - object) (step5_done - object) (step6_done - object) (step7_done - object) (step8_done - object) (step9_done - object) (step10_done - object)
    (step11_done - object) (step12_done - object) (step13_done - object) (step14_done - object) (step15_done - object) (step16_done - object) (step17_done - object) (step18_done - object) (step19_done - object) (step20_done - object)
    (step21_done - object) (step22_done - object) (step23_done - object) (step24_done - object) (step25_done - object) (step26_done - object) (step27_done - object) (step28_done - object) (step29_done - object) (step30_done - object)
    (step31_done - object) (step32_done - object) (step33_done - object) (step34_done - object) (step35_done - object) (step36_done - object) (step37_done - object) (step38_done - object) (step39_done - object) (step40_done - object)
    (step41_done - object) (step42_done - object) (step43_done - object) (step44_done - object) (step45_done - object) (step46_done - object) (step47_done - object) (step48_done - object) (step49_done - object) (step50_done - object)
    (step51_done - object) (step52_done - object) (step53_done - object) (step54_done - object) (step55_done - object) (step56_done - object) (step57_done - object) (step58_done - object) (step59_done - object) (step60_done - object)
    (step61_done - object) (step62_done - object) (step63_done - object) (step64_done - object) (step65_done - object) (step66_done - object) (step67_done - object) (step68_done - object) (step69_done - object) (step70_done - object)
    (step71_done - object) (step72_done - object) (step73_done - object) (step74_done - object) (step75_done - object) (step76_done - object) (step77_done - object) (step78_done - object) (step79_done - object) (step80_done - object))
  (:durative-action do_step1 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step78_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_done))))
  (:durative-action do_step2 :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_done))))
  (:durative-action do_step3 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_done))))
  (:durative-action do_step4 :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step21_done)) (at start (step37_done)) (at start (step40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_done))))
  (:durative-action do_step5 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step25_done)) (at start (step41_done)) (at start (step61_done)) (at start (step63_done)) (at start (step72_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_done))))
  (:durative-action do_step6 :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step17_done)) (at start (step19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_done))))
  (:durative-action do_step7 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step78_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_done))))
  (:durative-action do_step8 :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step25_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_done))))
  (:durative-action do_step9 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step40_done)) (at start (step56_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_done))))
  (:durative-action do_step10 :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step16_done)) (at start (step19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_done))))
  (:durative-action do_step11 :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_done))))
  (:durative-action do_step12 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step16_done)) (at start (step30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_done))))
  (:durative-action do_step13 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step16_done)) (at start (step46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_done))))
  (:durative-action do_step14 :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step5_done)) (at start (step77_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_done))))
  (:durative-action do_step15 :duration 240
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)) (at start (step51_done)) (at start (step69_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_done))))
  (:durative-action do_step16 :duration 300
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_done))))
  (:durative-action do_step17 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)) (at start (step13_done)) (at start (step37_done)) (at start (step48_done)) (at start (step72_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_done))))
  (:durative-action do_step18 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_done))))
  (:durative-action do_step19 :duration 480
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_done))))
  (:durative-action do_step20 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)) (at start (step33_done)) (at start (step57_done)) (at start (step67_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_done))))
  (:durative-action do_step21 :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step19_done)) (at start (step24_done)) (at start (step33_done)) (at start (step47_done)) (at start (step63_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_done))))
  (:durative-action do_step22 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step8_done)) (at start (step31_done)) (at start (step32_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_done))))
  (:durative-action do_step23 :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step1_done)) (at start (step13_done)) (at start (step26_done)) (at start (step76_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_done))))
  (:durative-action do_step24 :duration 600
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_done))))
  (:durative-action do_step25 :duration 240
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_done))))
  (:durative-action do_step26 :duration 10800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step36_done)) (at start (step40_done)) (at start (step58_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_done))))
  (:durative-action do_step27 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step54_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_done))))
  (:durative-action do_step28 :duration 720
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step10_done)) (at start (step63_done)) (at start (step74_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_done))))
  (:durative-action do_step29 :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step20_done)) (at start (step31_done)) (at start (step63_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_done))))
  (:durative-action do_step30 :duration 120
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_done))))
  (:durative-action do_step31 :duration 14400
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step35_done)) (at start (step52_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step31_done))))
  (:durative-action do_step32 :duration 300
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step32_done))))
  (:durative-action do_step33 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step55_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step33_done))))
  (:durative-action do_step34 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)) (at start (step16_done)) (at start (step31_done)) (at start (step77_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step34_done))))
  (:durative-action do_step35 :duration 300
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step35_done))))
  (:durative-action do_step36 :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step36_done))))
  (:durative-action do_step37 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step32_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step37_done))))
  (:durative-action do_step38 :duration 900
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step5_done)) (at start (step26_done)) (at start (step42_done)) (at start (step72_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step38_done))))
  (:durative-action do_step39 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step39_done))))
  (:durative-action do_step40 :duration 3600
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step40_done))))
  (:durative-action do_step41 :duration 1200
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step41_done))))
  (:durative-action do_step42 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step37_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step42_done))))
  (:durative-action do_step43 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step43_done))))
  (:durative-action do_step44 :duration 900
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step44_done))))
  (:durative-action do_step45 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step26_done)) (at start (step52_done)) (at start (step78_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step45_done))))
  (:durative-action do_step46 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step46_done))))
  (:durative-action do_step47 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step40_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step47_done))))
  (:durative-action do_step48 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step28_done)) (at start (step58_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step48_done))))
  (:durative-action do_step49 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step17_done)) (at start (step48_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step49_done))))
  (:durative-action do_step50 :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step12_done)) (at start (step41_done)) (at start (step63_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step50_done))))
  (:durative-action do_step51 :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step51_done))))
  (:durative-action do_step52 :duration 1800
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step32_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step52_done))))
  (:durative-action do_step53 :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step29_done)) (at start (step37_done)) (at start (step41_done)) (at start (step42_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step53_done))))
  (:durative-action do_step54 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step51_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step54_done))))
  (:durative-action do_step55 :duration 1500
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step19_done)) (at start (step40_done)) (at start (step69_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step55_done))))
  (:durative-action do_step56 :duration 480
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step58_done)) (at start (step66_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step56_done))))
  (:durative-action do_step57 :duration 300
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step57_done))))
  (:durative-action do_step58 :duration 360
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step58_done))))
  (:durative-action do_step59 :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step44_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step59_done))))
  (:durative-action do_step60 :duration 240
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step60_done))))
  (:durative-action do_step61 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step10_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step61_done))))
  (:durative-action do_step62 :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step5_done)) (at start (step52_done)) (at start (step74_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step62_done))))
  (:durative-action do_step63 :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step8_done)) (at start (step10_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step63_done))))
  (:durative-action do_step64 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)) (at start (step78_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step64_done))))
  (:durative-action do_step65 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step24_done)) (at start (step37_done)) (at start (step54_done)) (at start (step69_done)) (at start (step79_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step65_done))))
  (:durative-action do_step66 :duration 3600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step11_done)) (at start (step29_done)) (at start (step31_done)) (at start (step41_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step66_done))))
  (:durative-action do_step67 :duration 180
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step13_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step67_done))))
  (:durative-action do_step68 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step15_done)) (at start (step61_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step68_done))))
  (:durative-action do_step69 :duration 240
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step41_done)) (at start (step46_done)) (at start (step57_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step69_done))))
  (:durative-action do_step70 :duration 30
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step33_done)) (at start (step56_done)) (at start (step63_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step70_done))))
  (:durative-action do_step71 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step27_done)) (at start (step35_done)) (at start (step47_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step71_done))))
  (:durative-action do_step72 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step73_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step72_done))))
  (:durative-action do_step73 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step24_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step73_done))))
  (:durative-action do_step74 :duration 600
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step7_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step74_done))))
  (:durative-action do_step75 :duration 120
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step2_done)) (at start (step38_done)) (at start (step44_done)) (at start (step64_done)) (at start (step76_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step75_done))))
  (:durative-action do_step76 :duration 43200
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step76_done))))
  (:durative-action do_step77 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step46_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step77_done))))
  (:durative-action do_step78 :duration 60
    :parameters (?s - step)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step78_done))))
  (:durative-action do_step79 :duration 300
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step19_done)) (at start (step29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step79_done))))
  (:durative-action do_step80 :duration 60
    :parameters (?s - step)
    :condition (and (at start (step_pending ?s)) (at start (step38_done)) (at start (step41_done)) (at start (step67_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step80_done))))
)