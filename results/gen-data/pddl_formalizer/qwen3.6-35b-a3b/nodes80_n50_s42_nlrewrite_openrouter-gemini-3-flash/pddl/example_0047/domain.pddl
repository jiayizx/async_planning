(define (domain dailyme_news_digest)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (step1_semantic) (step2_semantic) (step3_semantic) (step4_semantic) (step5_semantic)
    (step6_semantic) (step7_semantic) (step8_semantic) (step9_semantic) (step10_semantic)
    (step11_semantic) (step12_semantic) (step13_semantic) (step14_semantic) (step15_semantic)
    (step16_semantic) (step17_semantic) (step18_semantic) (step19_semantic) (step20_semantic)
    (step21_semantic) (step22_semantic) (step23_semantic) (step24_semantic) (step25_semantic)
    (step26_semantic) (step27_semantic) (step28_semantic) (step29_semantic) (step30_semantic)
    (step31_semantic) (step32_semantic) (step33_semantic) (step34_semantic) (step35_semantic)
    (step36_semantic) (step37_semantic) (step38_semantic) (step39_semantic) (step40_semantic)
    (step41_semantic) (step42_semantic) (step43_semantic) (step44_semantic) (step45_semantic)
    (step46_semantic) (step47_semantic) (step48_semantic) (step49_semantic) (step50_semantic)
    (step51_semantic) (step52_semantic) (step53_semantic) (step54_semantic) (step55_semantic)
    (step56_semantic) (step57_semantic) (step58_semantic) (step59_semantic) (step60_semantic)
    (step61_semantic) (step62_semantic) (step63_semantic) (step64_semantic) (step65_semantic)
    (step66_semantic) (step67_semantic) (step68_semantic) (step69_semantic) (step70_semantic)
    (step71_semantic) (step72_semantic) (step73_semantic) (step74_semantic) (step75_semantic)
    (step76_semantic) (step77_semantic) (step78_semantic) (step79_semantic) (step80_semantic))
  (:durative-action do_step1 :parameters (?s - step) :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (step31_semantic)) (at start (step68_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step1_semantic))))
  (:durative-action do_step2 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step75_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step2_semantic))))
  (:durative-action do_step3 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step28_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step3_semantic))))
  (:durative-action do_step4 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (step20_semantic)) (at start (step33_semantic)) (at start (step57_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step4_semantic))))
  (:durative-action do_step5 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step57_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step5_semantic))))
  (:durative-action do_step6 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step27_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step6_semantic))))
  (:durative-action do_step7 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step26_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step7_semantic))))
  (:durative-action do_step8 :parameters (?s - step) :duration 18000
    :condition (and (at start (step_pending ?s)) (at start (step4_semantic)) (at start (step17_semantic)) (at start (step31_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step8_semantic))))
  (:durative-action do_step9 :parameters (?s - step) :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (step26_semantic)) (at start (step71_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step9_semantic))))
  (:durative-action do_step10 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step41_semantic)) (at start (step75_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step10_semantic))))
  (:durative-action do_step11 :parameters (?s - step) :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (step3_semantic)) (at start (step44_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step11_semantic))))
  (:durative-action do_step12 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step27_semantic)) (at start (step76_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step12_semantic))))
  (:durative-action do_step13 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step57_semantic)) (at start (step69_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step13_semantic))))
  (:durative-action do_step14 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step28_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step14_semantic))))
  (:durative-action do_step15 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step34_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step15_semantic))))
  (:durative-action do_step16 :parameters (?s - step) :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (step13_semantic)) (at start (step52_semantic)) (at start (step76_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step16_semantic))))
  (:durative-action do_step17 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step39_semantic)) (at start (step44_semantic)) (at start (step47_semantic)) (at start (step62_semantic)) (at start (step64_semantic)) (at start (step71_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step17_semantic))))
  (:durative-action do_step18 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step53_semantic)) (at start (step54_semantic)) (at start (step56_semantic)) (at start (step78_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step18_semantic))))
  (:durative-action do_step19 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step20_semantic)) (at start (step49_semantic)) (at start (step51_semantic)) (at start (step60_semantic)) (at start (step79_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step19_semantic))))
  (:durative-action do_step20 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step2_semantic)) (at start (step3_semantic)) (at start (step64_semantic)) (at start (step69_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step20_semantic))))
  (:durative-action do_step21 :parameters (?s - step) :duration 600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step21_semantic))))
  (:durative-action do_step22 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step6_semantic)) (at start (step7_semantic)) (at start (step8_semantic)) (at start (step60_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step22_semantic))))
  (:durative-action do_step23 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step2_semantic)) (at start (step13_semantic)) (at start (step33_semantic)) (at start (step44_semantic)) (at start (step53_semantic)) (at start (step57_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step23_semantic))))
  (:durative-action do_step24 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step7_semantic)) (at start (step21_semantic)) (at start (step39_semantic)) (at start (step73_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step24_semantic))))
  (:durative-action do_step25 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step6_semantic)) (at start (step12_semantic)) (at start (step33_semantic)) (at start (step70_semantic)) (at start (step74_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step25_semantic))))
  (:durative-action do_step26 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step45_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step26_semantic))))
  (:durative-action do_step27 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step6_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step27_semantic))))
  (:durative-action do_step28 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (step49_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step28_semantic))))
  (:durative-action do_step29 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step71_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step29_semantic))))
  (:durative-action do_step30 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (step69_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step30_semantic))))
  (:durative-action do_step31 :parameters (?s - step) :duration 21600
    :condition (and (at start (step_pending ?s)) (at start (step4_semantic)) (at start (step33_semantic)) (at start (step44_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step31_semantic))))
  (:durative-action do_step32 :parameters (?s - step) :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (step73_semantic)) (at start (step74_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step32_semantic))))
  (:durative-action do_step33 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step2_semantic)) (at start (step21_semantic)) (at start (step45_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step33_semantic))))
  (:durative-action do_step34 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step8_semantic)) (at start (step11_semantic)) (at start (step15_semantic)) (at start (step20_semantic)) (at start (step73_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step34_semantic))))
  (:durative-action do_step35 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step13_semantic)) (at start (step37_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step35_semantic))))
  (:durative-action do_step36 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step2_semantic)) (at start (step4_semantic)) (at start (step6_semantic)) (at start (step18_semantic)) (at start (step26_semantic)) (at start (step30_semantic)) (at start (step42_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step36_semantic))))
  (:durative-action do_step37 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step2_semantic)) (at start (step64_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step37_semantic))))
  (:durative-action do_step38 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step3_semantic)) (at start (step31_semantic)) (at start (step50_semantic)) (at start (step55_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step38_semantic))))
  (:durative-action do_step39 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step17_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step39_semantic))))
  (:durative-action do_step40 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step67_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step40_semantic))))
  (:durative-action do_step41 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step10_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step41_semantic))))
  (:durative-action do_step42 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step2_semantic)) (at start (step50_semantic)) (at start (step78_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step42_semantic))))
  (:durative-action do_step43 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step2_semantic)) (at start (step70_semantic)) (at start (step77_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step43_semantic))))
  (:durative-action do_step44 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (step53_semantic)) (at start (step69_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step44_semantic))))
  (:durative-action do_step45 :parameters (?s - step) :duration 900
    :condition (and (at start (step_pending ?s)) (at start (step26_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step45_semantic))))
  (:durative-action do_step46 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step44_semantic)) (at start (step62_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step46_semantic))))
  (:durative-action do_step47 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (step15_semantic)) (at start (step27_semantic)) (at start (step44_semantic)) (at start (step58_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step47_semantic))))
  (:durative-action do_step48 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step8_semantic)) (at start (step62_semantic)) (at start (step75_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step48_semantic))))
  (:durative-action do_step49 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step45_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step49_semantic))))
  (:durative-action do_step50 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step38_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step50_semantic))))
  (:durative-action do_step51 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step4_semantic)) (at start (step29_semantic)) (at start (step65_semantic)) (at start (step70_semantic)) (at start (step76_semantic)) (at start (step78_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step51_semantic))))
  (:durative-action do_step52 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step16_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step52_semantic))))
  (:durative-action do_step53 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step3_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step53_semantic))))
  (:durative-action do_step54 :parameters (?s - step) :duration 600
    :condition (and (at start (step_pending ?s)) (at start (step7_semantic)) (at start (step21_semantic)) (at start (step41_semantic)) (at start (step52_semantic)) (at start (step70_semantic)) (at start (step79_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step54_semantic))))
  (:durative-action do_step55 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (step38_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step55_semantic))))
  (:durative-action do_step56 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step62_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step56_semantic))))
  (:durative-action do_step57 :parameters (?s - step) :duration 86400
    :condition (and (at start (step_pending ?s)) (at start (step4_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step57_semantic))))
  (:durative-action do_step58 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step2_semantic)) (at start (step31_semantic)) (at start (step45_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step58_semantic))))
  (:durative-action do_step59 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step49_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step59_semantic))))
  (:durative-action do_step60 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step3_semantic)) (at start (step64_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step60_semantic))))
  (:durative-action do_step61 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step14_semantic)) (at start (step34_semantic)) (at start (step39_semantic)) (at start (step42_semantic)) (at start (step53_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step61_semantic))))
  (:durative-action do_step62 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step4_semantic)) (at start (step7_semantic)) (at start (step21_semantic)) (at start (step39_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step62_semantic))))
  (:durative-action do_step63 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step9_semantic)) (at start (step34_semantic)) (at start (step75_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step63_semantic))))
  (:durative-action do_step64 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step2_semantic)) (at start (step28_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step64_semantic))))
  (:durative-action do_step65 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step56_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step65_semantic))))
  (:durative-action do_step66 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step33_semantic)) (at start (step35_semantic)) (at start (step45_semantic)) (at start (step67_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step66_semantic))))
  (:durative-action do_step67 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step6_semantic)) (at start (step15_semantic)) (at start (step53_semantic)) (at start (step68_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step67_semantic))))
  (:durative-action do_step68 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step1_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step68_semantic))))
  (:durative-action do_step69 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step41_semantic)) (at start (step49_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step69_semantic))))
  (:durative-action do_step70 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step25_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step70_semantic))))
  (:durative-action do_step71 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step20_semantic)) (at start (step45_semantic)) (at start (step57_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step71_semantic))))
  (:durative-action do_step72 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step8_semantic)) (at start (step40_semantic)) (at start (step70_semantic)) (at start (step75_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step72_semantic))))
  (:durative-action do_step73 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step8_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step73_semantic))))
  (:durative-action do_step74 :parameters (?s - step) :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (step3_semantic)) (at start (step9_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step74_semantic))))
  (:durative-action do_step75 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step2_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step75_semantic))))
  (:durative-action do_step76 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step12_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step76_semantic))))
  (:durative-action do_step77 :parameters (?s - step) :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (step1_semantic)) (at start (step11_semantic)) (at start (step27_semantic)) (at start (step46_semantic)) (at start (step47_semantic)) (at start (step71_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step77_semantic))))
  (:durative-action do_step78 :parameters (?s - step) :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (step6_semantic)) (at start (step65_semantic)) (at start (step80_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step78_semantic))))
  (:durative-action do_step79 :parameters (?s - step) :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (step28_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step79_semantic))))
  (:durative-action do_step80 :parameters (?s - step) :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (step57_semantic)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (step80_semantic)))))