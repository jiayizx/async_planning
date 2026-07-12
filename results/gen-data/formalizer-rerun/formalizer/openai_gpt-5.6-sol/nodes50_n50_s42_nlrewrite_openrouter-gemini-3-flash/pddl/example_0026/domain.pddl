(define (domain fruit-loop-treats)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step-pending ?s - step) (step-done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50))

 (:durative-action step1-purchase-fruit-loops
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step-pending ?s)) (at start (p1)) (at start (d26)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p1))) (at end (step-done ?s)) (at end (d1))))
 (:durative-action step2-grease-pan
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step-pending ?s)) (at start (p2)) (at start (d21)) (at start (d49)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p2))) (at end (step-done ?s)) (at end (d2))))
 (:durative-action step3-measure-marshmallows
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step-pending ?s)) (at start (p3)) (at start (d25)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p3))) (at end (step-done ?s)) (at end (d3))))
 (:durative-action step4-melt-butter
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step-pending ?s)) (at start (p4)) (at start (d19)) (at start (d23)) (at start (d33)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p4))) (at end (step-done ?s)) (at end (d4))))
 (:durative-action step5-pour-cereal
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step-pending ?s)) (at start (p5)) (at start (d19)) (at start (d35)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p5))) (at end (step-done ?s)) (at end (d5))))
 (:durative-action step6-locate-spatula
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step-pending ?s)) (at start (p6)) (at start (d14)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p6))) (at end (step-done ?s)) (at end (d6))))
 (:durative-action step7-clear-counter
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step-pending ?s)) (at start (p7)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p7))) (at end (step-done ?s)) (at end (d7))))
 (:durative-action step8-crush-cereal
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step-pending ?s)) (at start (p8)) (at start (d25)) (at start (d50)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p8))) (at end (step-done ?s)) (at end (d8))))
 (:durative-action step9-unpack-rice-cereal
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step-pending ?s)) (at start (p9)) (at start (d12)) (at start (d18)) (at start (d24)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p9))) (at end (step-done ?s)) (at end (d9))))
 (:durative-action step10-check-marshmallows
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step-pending ?s)) (at start (p10)) (at start (d13)) (at start (d19)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p10))) (at end (step-done ?s)) (at end (d10))))
 (:durative-action step11-set-cooling-rack
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step-pending ?s)) (at start (p11)) (at start (d7)) (at start (d27)) (at start (d33)) (at start (d44)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p11))) (at end (step-done ?s)) (at end (d11))))
 (:durative-action step12-retrieve-rice-cereal
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step-pending ?s)) (at start (p12)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p12))) (at end (step-done ?s)) (at end (d12))))
 (:durative-action step13-wash-pot
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step-pending ?s)) (at start (p13)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p13))) (at end (step-done ?s)) (at end (d13))))
 (:durative-action step14-organize-utensils
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step-pending ?s)) (at start (p14)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p14))) (at end (step-done ?s)) (at end (d14))))
 (:durative-action step15-salt-butter
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step-pending ?s)) (at start (p15)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p15))) (at end (step-done ?s)) (at end (d15))))
 (:durative-action step16-prepare-parchment
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step-pending ?s)) (at start (p16)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p16))) (at end (step-done ?s)) (at end (d16))))
 (:durative-action step17-sanitize-area
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step-pending ?s)) (at start (p17)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p17))) (at end (step-done ?s)) (at end (d17))))
 (:durative-action step18-measure-rice-cereal
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step-pending ?s)) (at start (p18)) (at start (d34)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p18))) (at end (step-done ?s)) (at end (d18))))
 (:durative-action step19-open-marshmallows
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step-pending ?s)) (at start (p19)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p19))) (at end (step-done ?s)) (at end (d19))))
 (:durative-action step20-dry-pot
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step-pending ?s)) (at start (p20)) (at start (d6)) (at start (d13)) (at start (d17)) (at start (d18)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p20))) (at end (step-done ?s)) (at end (d20))))
 (:durative-action step21-measure-fruit-loops
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step-pending ?s)) (at start (p21)) (at start (d24)) (at start (d25)) (at start (d27)) (at start (d28)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p21))) (at end (step-done ?s)) (at end (d21))))
 (:durative-action step22-set-topping-bowl
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step-pending ?s)) (at start (p22)) (at start (d26)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p22))) (at end (step-done ?s)) (at end (d22))))
 (:durative-action step23-turn-on-stove
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step-pending ?s)) (at start (p23)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p23))) (at end (step-done ?s)) (at end (d23))))
 (:durative-action step24-clean-measuring-cups
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step-pending ?s)) (at start (p24)) (at start (d14)) (at start (d17)) (at start (d34)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p24))) (at end (step-done ?s)) (at end (d24))))
 (:durative-action step25-soften-butter
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step-pending ?s)) (at start (p25)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p25))) (at end (step-done ?s)) (at end (d25))))
 (:durative-action step26-drive-to-store
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step-pending ?s)) (at start (p26)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p26))) (at end (step-done ?s)) (at end (d26))))
 (:durative-action step27-find-scale
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step-pending ?s)) (at start (p27)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p27))) (at end (step-done ?s)) (at end (d27))))
 (:durative-action step28-take-out-butter
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step-pending ?s)) (at start (p28)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p28))) (at end (step-done ?s)) (at end (d28))))
 (:durative-action step29-discard-wrapper
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step-pending ?s)) (at start (p29)) (at start (d19)) (at start (d30)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p29))) (at end (step-done ?s)) (at end (d29))))
 (:durative-action step30-line-pan
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step-pending ?s)) (at start (p30)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p30))) (at end (step-done ?s)) (at end (d30))))
 (:durative-action step31-level-cereal
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step-pending ?s)) (at start (p31)) (at start (d1)) (at start (d33)) (at start (d47)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p31))) (at end (step-done ?s)) (at end (d31))))
 (:durative-action step32-spray-spatula
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step-pending ?s)) (at start (p32)) (at start (d34)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p32))) (at end (step-done ?s)) (at end (d32))))
 (:durative-action step33-rinse-bowl
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step-pending ?s)) (at start (p33)) (at start (d24)) (at start (d48)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p33))) (at end (step-done ?s)) (at end (d33))))
 (:durative-action step34-check-inventory
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step-pending ?s)) (at start (p34)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p34))) (at end (step-done ?s)) (at end (d34))))
 (:durative-action step35-combine-cereals
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step-pending ?s)) (at start (p35)) (at start (d21)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p35))) (at end (step-done ?s)) (at end (d35))))
 (:durative-action step36-let-treats-set
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step-pending ?s)) (at start (p36)) (at start (d37)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p36))) (at end (step-done ?s)) (at end (d36))))
 (:durative-action step37-press-into-pan
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step-pending ?s)) (at start (p37)) (at start (d16)) (at start (d30)) (at start (d46)) (at start (d47)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p37))) (at end (step-done ?s)) (at end (d37))))
 (:durative-action step38-get-sprinkles
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step-pending ?s)) (at start (p38)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p38))) (at end (step-done ?s)) (at end (d38))))
 (:durative-action step39-mix-colors
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step-pending ?s)) (at start (p39)) (at start (d1)) (at start (d8)) (at start (d25)) (at start (d26)) (at start (d42)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p39))) (at end (step-done ?s)) (at end (d39))))
 (:durative-action step40-sift-dust
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step-pending ?s)) (at start (p40)) (at start (d9)) (at start (d24)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p40))) (at end (step-done ?s)) (at end (d40))))
 (:durative-action step41-sprinkle-topping
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step-pending ?s)) (at start (p41)) (at start (d50)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p41))) (at end (step-done ?s)) (at end (d41))))
 (:durative-action step42-cube-butter
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (step-pending ?s)) (at start (p42)) (at start (d10)) (at start (d28)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p42))) (at end (step-done ?s)) (at end (d42))))
 (:durative-action step43-prepare-knife
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (step-pending ?s)) (at start (p43)) (at start (d33)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p43))) (at end (step-done ?s)) (at end (d43))))
 (:durative-action step44-melt-marshmallows
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (step-pending ?s)) (at start (p44)) (at start (d3)) (at start (d10)) (at start (d24)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p44))) (at end (step-done ?s)) (at end (d44))))
 (:durative-action step45-remove-pot
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step-pending ?s)) (at start (p45)) (at start (d11)) (at start (d15)) (at start (d44)) (at start (d48)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p45))) (at end (step-done ?s)) (at end (d45))))
 (:durative-action step46-put-on-mitts
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step-pending ?s)) (at start (p46)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p46))) (at end (step-done ?s)) (at end (d46))))
 (:durative-action step47-fold-cereal
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (step-pending ?s)) (at start (p47)) (at start (d15)) (at start (d19)) (at start (d45)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p47))) (at end (step-done ?s)) (at end (d47))))
 (:durative-action step48-wipe-stove
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step-pending ?s)) (at start (p48)) (at start (d7)) (at start (d32)) (at start (d49)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p48))) (at end (step-done ?s)) (at end (d48))))
 (:durative-action step49-open-cereal-box
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (step-pending ?s)) (at start (p49)) (at start (d1)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p49))) (at end (step-done ?s)) (at end (d49))))
 (:durative-action step50-pour-snack
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step-pending ?s)) (at start (p50)) (at start (d9)) (at start (d24)) (at start (d38)))
  :effect (and (at start (not (step-pending ?s))) (at start (not (p50))) (at end (step-done ?s)) (at end (d50))))
)