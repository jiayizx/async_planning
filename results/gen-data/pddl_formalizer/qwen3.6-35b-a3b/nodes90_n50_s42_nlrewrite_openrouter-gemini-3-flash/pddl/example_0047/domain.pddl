(define (domain vacation_planning)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step)
    (step1_sem) (step2_sem) (step3_sem) (step4_sem) (step5_sem) (step6_sem) (step7_sem) (step8_sem) (step9_sem) (step10_sem)
    (step11_sem) (step12_sem) (step13_sem) (step14_sem) (step15_sem) (step16_sem) (step17_sem) (step18_sem) (step19_sem) (step20_sem)
    (step21_sem) (step22_sem) (step23_sem) (step24_sem) (step25_sem) (step26_sem) (step27_sem) (step28_sem) (step29_sem) (step30_sem)
    (step31_sem) (step32_sem) (step33_sem) (step34_sem) (step35_sem) (step36_sem) (step37_sem) (step38_sem) (step39_sem) (step40_sem)
    (step41_sem) (step42_sem) (step43_sem) (step44_sem) (step45_sem) (step46_sem) (step47_sem) (step48_sem) (step49_sem) (step50_sem)
    (step51_sem) (step52_sem) (step53_sem) (step54_sem) (step55_sem) (step56_sem) (step57_sem) (step58_sem) (step59_sem) (step60_sem)
    (step61_sem) (step62_sem) (step63_sem) (step64_sem) (step65_sem) (step66_sem) (step67_sem) (step68_sem) (step69_sem) (step70_sem)
    (step71_sem) (step72_sem) (step73_sem) (step74_sem) (step75_sem) (step76_sem) (step77_sem) (step78_sem) (step79_sem) (step80_sem)
    (step81_sem) (step82_sem) (step83_sem) (step84_sem) (step85_sem) (step86_sem) (step87_sem) (step88_sem) (step89_sem) (step90_sem))
  (:durative-action do_step1 :parameters (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step16_sem)) (at start (step24_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_sem))))
  (:durative-action do_step2 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step24_sem)) (at start (step26_sem)) (at start (step46_sem)) (at start (step70_sem)) (at start (step78_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_sem))))
  (:durative-action do_step3 :parameters (?s - step) :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_sem))))
  (:durative-action do_step4 :parameters (?s - step) :duration 10800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_sem))))
  (:durative-action do_step5 :parameters (?s - step) :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step27_sem)) (at start (step44_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_sem))))
  (:durative-action do_step6 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step24_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_sem))))
  (:durative-action do_step7 :parameters (?s - step) :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (step19_sem)) (at start (step82_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_sem))))
  (:durative-action do_step8 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step12_sem)) (at start (step43_sem)) (at start (step62_sem)) (at start (step65_sem)) (at start (step67_sem)) (at start (step69_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_sem))))
  (:durative-action do_step9 :parameters (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step46_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_sem))))
  (:durative-action do_step10 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step8_sem)) (at start (step15_sem)) (at start (step57_sem)) (at start (step60_sem)) (at start (step74_sem)) (at start (step81_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_sem))))
  (:durative-action do_step11 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step6_sem)) (at start (step26_sem)) (at start (step60_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_sem))))
  (:durative-action do_step12 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step27_sem)) (at start (step44_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_sem))))
  (:durative-action do_step13 :parameters (?s - step) :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (step44_sem)) (at start (step67_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_sem))))
  (:durative-action do_step14 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step13_sem)) (at start (step32_sem)) (at start (step70_sem)) (at start (step82_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_sem))))
  (:durative-action do_step15 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step12_sem)) (at start (step21_sem)) (at start (step27_sem)) (at start (step39_sem)) (at start (step68_sem)) (at start (step74_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_sem))))
  (:durative-action do_step16 :parameters (?s - step) :duration 300
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_sem))))
  (:durative-action do_step17 :parameters (?s - step) :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step8_sem)) (at start (step24_sem)) (at start (step49_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_sem))))
  (:durative-action do_step18 :parameters (?s - step) :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (step5_sem)) (at start (step28_sem)) (at start (step37_sem)) (at start (step60_sem)) (at start (step69_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_sem))))
  (:durative-action do_step19 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step37_sem)) (at start (step58_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_sem))))
  (:durative-action do_step20 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step60_sem)) (at start (step67_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_sem))))
  (:durative-action do_step21 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step23_sem)) (at start (step74_sem)) (at start (step79_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_sem))))
  (:durative-action do_step22 :parameters (?s - step) :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step3_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_sem))))
  (:durative-action do_step23 :parameters (?s - step) :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (step16_sem)) (at start (step40_sem)) (at start (step48_sem)) (at start (step49_sem)) (at start (step78_sem)) (at start (step83_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_sem))))
  (:durative-action do_step24 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step67_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_sem))))
  (:durative-action do_step25 :parameters (?s - step) :duration 1209600
    :condition (and (at start (step_pending ?s)) (at start (step4_sem)) (at start (step62_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_sem))))
  (:durative-action do_step26 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step19_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_sem))))
  (:durative-action do_step27 :parameters (?s - step) :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (step32_sem)) (at start (step85_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_sem))))
  (:durative-action do_step28 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step12_sem)) (at start (step16_sem)) (at start (step82_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_sem))))
  (:durative-action do_step29 :parameters (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step12_sem)) (at start (step46_sem)) (at start (step81_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_sem))))
  (:durative-action do_step30 :parameters (?s - step) :duration 18000
    :condition (and (at start (step_pending ?s)) (at start (step3_sem)) (at start (step9_sem)) (at start (step20_sem)) (at start (step43_sem)) (at start (step75_sem)) (at start (step76_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_sem))))
  (:durative-action do_step31 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step4_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step31_sem))))
  (:durative-action do_step32 :parameters (?s - step) :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step32_sem))))
  (:durative-action do_step33 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step5_sem)) (at start (step58_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step33_sem))))
  (:durative-action do_step34 :parameters (?s - step) :duration 259200
    :condition (and (at start (step_pending ?s)) (at start (step43_sem)) (at start (step73_sem)) (at start (step83_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step34_sem))))
  (:durative-action do_step35 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step29_sem)) (at start (step41_sem)) (at start (step50_sem)) (at start (step69_sem)) (at start (step73_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step35_sem))))
  (:durative-action do_step36 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step39_sem)) (at start (step41_sem)) (at start (step60_sem)) (at start (step73_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step36_sem))))
  (:durative-action do_step37 :parameters (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step32_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step37_sem))))
  (:durative-action do_step38 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step3_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step38_sem))))
  (:durative-action do_step39 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step3_sem)) (at start (step38_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step39_sem))))
  (:durative-action do_step40 :parameters (?s - step) :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step6_sem)) (at start (step22_sem)) (at start (step26_sem)) (at start (step44_sem)) (at start (step76_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step40_sem))))
  (:durative-action do_step41 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (step82_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step41_sem))))
  (:durative-action do_step42 :parameters (?s - step) :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (step37_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step42_sem))))
  (:durative-action do_step43 :parameters (?s - step) :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step43_sem))))
  (:durative-action do_step44 :parameters (?s - step) :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (step31_sem)) (at start (step85_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step44_sem))))
  (:durative-action do_step45 :parameters (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step58_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step45_sem))))
  (:durative-action do_step46 :parameters (?s - step) :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step46_sem))))
  (:durative-action do_step47 :parameters (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step14_sem)) (at start (step52_sem)) (at start (step78_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step47_sem))))
  (:durative-action do_step48 :parameters (?s - step) :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step48_sem))))
  (:durative-action do_step49 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step24_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step49_sem))))
  (:durative-action do_step50 :parameters (?s - step) :duration 14400
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step50_sem))))
  (:durative-action do_step51 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step5_sem)) (at start (step19_sem)) (at start (step27_sem)) (at start (step75_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step51_sem))))
  (:durative-action do_step52 :parameters (?s - step) :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step52_sem))))
  (:durative-action do_step53 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step65_sem)) (at start (step76_sem)) (at start (step83_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step53_sem))))
  (:durative-action do_step54 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (step3_sem)) (at start (step26_sem)) (at start (step29_sem)) (at start (step42_sem)) (at start (step50_sem)) (at start (step65_sem)) (at start (step76_sem)) (at start (step90_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step54_sem))))
  (:durative-action do_step55 :parameters (?s - step) :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step36_sem)) (at start (step74_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step55_sem))))
  (:durative-action do_step56 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step12_sem)) (at start (step40_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step56_sem))))
  (:durative-action do_step57 :parameters (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step6_sem)) (at start (step72_sem)) (at start (step87_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step57_sem))))
  (:durative-action do_step58 :parameters (?s - step) :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step58_sem))))
  (:durative-action do_step59 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step42_sem)) (at start (step80_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step59_sem))))
  (:durative-action do_step60 :parameters (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step45_sem)) (at start (step81_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step60_sem))))
  (:durative-action do_step61 :parameters (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step6_sem)) (at start (step28_sem)) (at start (step37_sem)) (at start (step42_sem)) (at start (step52_sem)) (at start (step58_sem)) (at start (step89_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step61_sem))))
  (:durative-action do_step62 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (step19_sem)) (at start (step20_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step62_sem))))
  (:durative-action do_step63 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step13_sem)) (at start (step28_sem)) (at start (step32_sem)) (at start (step57_sem)) (at start (step80_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step63_sem))))
  (:durative-action do_step64 :parameters (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step1_sem)) (at start (step23_sem)) (at start (step30_sem)) (at start (step54_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step64_sem))))
  (:durative-action do_step65 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step22_sem)) (at start (step28_sem)) (at start (step31_sem)) (at start (step51_sem)) (at start (step72_sem)) (at start (step90_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step65_sem))))
  (:durative-action do_step66 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step12_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step66_sem))))
  (:durative-action do_step67 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step87_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step67_sem))))
  (:durative-action do_step68 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step6_sem)) (at start (step90_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step68_sem))))
  (:durative-action do_step69 :parameters (?s - step) :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step69_sem))))
  (:durative-action do_step70 :parameters (?s - step) :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step70_sem))))
  (:durative-action do_step71 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step28_sem)) (at start (step35_sem)) (at start (step38_sem)) (at start (step51_sem)) (at start (step81_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step71_sem))))
  (:durative-action do_step72 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step45_sem)) (at start (step68_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step72_sem))))
  (:durative-action do_step73 :parameters (?s - step) :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step73_sem))))
  (:durative-action do_step74 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step46_sem)) (at start (step60_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step74_sem))))
  (:durative-action do_step75 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step27_sem)) (at start (step38_sem)) (at start (step46_sem)) (at start (step87_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step75_sem))))
  (:durative-action do_step76 :parameters (?s - step) :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step76_sem))))
  (:durative-action do_step77 :parameters (?s - step) :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (step87_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step77_sem))))
  (:durative-action do_step78 :parameters (?s - step) :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (step58_sem)) (at start (step85_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step78_sem))))
  (:durative-action do_step79 :parameters (?s - step) :duration 300
    :condition (and (at start (step_pending ?s)) (at start (step37_sem)) (at start (step90_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step79_sem))))
  (:durative-action do_step80 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step8_sem)) (at start (step73_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step80_sem))))
  (:durative-action do_step81 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step31_sem)) (at start (step32_sem)) (at start (step43_sem)) (at start (step82_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step81_sem))))
  (:durative-action do_step82 :parameters (?s - step) :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step82_sem))))
  (:durative-action do_step83 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step85_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step83_sem))))
  (:durative-action do_step84 :parameters (?s - step) :duration 18000
    :condition (and (at start (step_pending ?s)) (at start (step36_sem)) (at start (step64_sem)) (at start (step85_sem)) (at start (step86_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step84_sem))))
  (:durative-action do_step85 :parameters (?s - step) :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (step77_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step85_sem))))
  (:durative-action do_step86 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (step7_sem)) (at start (step21_sem)) (at start (step29_sem)) (at start (step36_sem)) (at start (step65_sem)) (at start (step70_sem)) (at start (step73_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step86_sem))))
  (:durative-action do_step87 :parameters (?s - step) :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step87_sem))))
  (:durative-action do_step88 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step28_sem)) (at start (step38_sem)) (at start (step43_sem)) (at start (step62_sem)) (at start (step76_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step88_sem))))
  (:durative-action do_step89 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step43_sem)) (at start (step53_sem)) (at start (step58_sem)) (at start (step65_sem)) (at start (step83_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step89_sem))))
  (:durative-action do_step90 :parameters (?s - step) :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (step9_sem)) (at start (step45_sem)) (at start (step48_sem)) (at start (step87_sem)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step90_sem)))))