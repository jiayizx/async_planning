(define (domain make-farina)
 (:requirements :typing :durative-actions)
 (:types step t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t60 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  (p51) (p52) (p53) (p54) (p55) (p56) (p57) (p58) (p59) (p60))

 (:durative-action step1-sift
  :parameters (?s - t1) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p24)) (at start (p35)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
 (:durative-action step2-measure-water
  :parameters (?s - t2) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
 (:durative-action step3-whisk-grains
  :parameters (?s - t3) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
 (:durative-action step4-adjust-heat
  :parameters (?s - t4) :duration (= ?duration 15)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
 (:durative-action step5-cover-pot
  :parameters (?s - t5) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (p13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
 (:durative-action step6-set-table
  :parameters (?s - t6) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p48)) (at start (p58)) (at start (p59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
 (:durative-action step7-take-container
  :parameters (?s - t7) :duration (= ?duration 20)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
 (:durative-action step8-rinse-cup
  :parameters (?s - t8) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
 (:durative-action step9-boil-water
  :parameters (?s - t9) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
 (:durative-action step10-add-salt
  :parameters (?s - t10) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p21)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
 (:durative-action step11-add-milk
  :parameters (?s - t11) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p22)) (at start (p23)) (at start (p55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
 (:durative-action step12-thicken
  :parameters (?s - t12) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
 (:durative-action step13-check-consistency
  :parameters (?s - t13) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
 (:durative-action step14-dishwasher-spoons
  :parameters (?s - t14) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
 (:durative-action step15-whisk-vigorously
  :parameters (?s - t15) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p9)) (at start (p22)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
 (:durative-action step16-find-saucepan
  :parameters (?s - t16) :duration (= ?duration 45)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
 (:durative-action step17-ladle-farina
  :parameters (?s - t17) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p32)) (at start (p34)) (at start (p40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
 (:durative-action step18-pour-water
  :parameters (?s - t18) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (p7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
 (:durative-action step19-add-honey
  :parameters (?s - t19) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (p26)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
 (:durative-action step20-add-cinnamon
  :parameters (?s - t20) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (p26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
 (:durative-action step21-place-saucepan
  :parameters (?s - t21) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (p16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
 (:durative-action step22-select-farina
  :parameters (?s - t22) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
 (:durative-action step23-warm-milk
  :parameters (?s - t23) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
 (:durative-action step24-inspect-farina
  :parameters (?s - t24) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
 (:durative-action step25-add-butter
  :parameters (?s - t25) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (p26)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
 (:durative-action step26-gather-toppings
  :parameters (?s - t26) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
 (:durative-action step27-clean-countertop
  :parameters (?s - t27) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p52)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
 (:durative-action step28-wipe-spills
  :parameters (?s - t28) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
 (:durative-action step29-let-sit
  :parameters (?s - t29) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (p54)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
 (:durative-action step30-discard-packaging
  :parameters (?s - t30) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p35)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
 (:durative-action step31-fetch-sugar
  :parameters (?s - t31) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
 (:durative-action step32-wash-hands
  :parameters (?s - t32) :duration (= ?duration 40)
  :condition (and (at start (step_pending ?s)) (at start (p52)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
 (:durative-action step33-final-stir
  :parameters (?s - t33) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p22)) (at start (p27)) (at start (p36)) (at start (p39)) (at start (p42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
 (:durative-action step34-ready-tray
  :parameters (?s - t34) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
 (:durative-action step35-prepare-garnishes
  :parameters (?s - t35) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p32)) (at start (p58)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
 (:durative-action step36-clear-stove
  :parameters (?s - t36) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
 (:durative-action step37-taste
  :parameters (?s - t37) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (p11)) (at start (p23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
 (:durative-action step38-exhaust-fan
  :parameters (?s - t38) :duration (= ?duration 10)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
 (:durative-action step39-dry-bowl
  :parameters (?s - t39) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
 (:durative-action step40-get-spoon
  :parameters (?s - t40) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
 (:durative-action step41-return-box
  :parameters (?s - t41) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
 (:durative-action step42-monitor-texture
  :parameters (?s - t42) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
 (:durative-action step43-turn-off-burner
  :parameters (?s - t43) :duration (= ?duration 5)
  :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p22)) (at start (p31)) (at start (p40)) (at start (p48)) (at start (p59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
 (:durative-action step44-add-raisins
  :parameters (?s - t44) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p4)) (at start (p19)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
 (:durative-action step45-wipe-bowls
  :parameters (?s - t45) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (p41)) (at start (p53)) (at start (p59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
 (:durative-action step46-pour-juice
  :parameters (?s - t46) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
 (:durative-action step47-slice-banana
  :parameters (?s - t47) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
 (:durative-action step48-open-drawer
  :parameters (?s - t48) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (p21)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
 (:durative-action step49-lay-napkin
  :parameters (?s - t49) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
 (:durative-action step50-toast-bread
  :parameters (?s - t50) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
 (:durative-action step51-peel-banana
  :parameters (?s - t51) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (p21)) (at start (p22)) (at start (p47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p51))))
 (:durative-action step52-check-expiration
  :parameters (?s - t52) :duration (= ?duration 15)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p52))))
 (:durative-action step53-arrange-banana
  :parameters (?s - t53) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p53))))
 (:durative-action step54-remove-lid
  :parameters (?s - t54) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p54))))
 (:durative-action step55-locate-whisk
  :parameters (?s - t55) :duration (= ?duration 20)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p55))))
 (:durative-action step56-butter-toast
  :parameters (?s - t56) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p56))))
 (:durative-action step57-set-timer
  :parameters (?s - t57) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (p5)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p57))))
 (:durative-action step58-rinse-berries
  :parameters (?s - t58) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p58))))
 (:durative-action step59-move-pot
  :parameters (?s - t59) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p59))))
 (:durative-action step60-serve
  :parameters (?s - t60) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p19)) (at start (p25)) (at start (p31)) (at start (p36)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p60))))
)