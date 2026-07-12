(define (domain wonton-wrappers)
 (:requirements :typing :durative-actions)
 (:types step t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50))

 (:durative-action rest-dough
  :parameters (?s - t1) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (d14)) (at start (d18)) (at start (d36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action sift-flour
  :parameters (?s - t2) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action measure-cornstarch
  :parameters (?s - t3) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action divide-dough
  :parameters (?s - t4) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d39)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action stack-wrappers
  :parameters (?s - t5) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d30)) (at start (d32)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action cut-squares
  :parameters (?s - t6) :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (d33)) (at start (d46)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action crack-eggs
  :parameters (?s - t7) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action clean-counter
  :parameters (?s - t8) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action wipe-mixing-area
  :parameters (?s - t9) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d10)) (at start (d14)) (at start (d21)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action sanitize-rolling-pin
  :parameters (?s - t10) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d8)) (at start (d30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action beat-eggs
  :parameters (?s - t11) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d30)) (at start (d34)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action calibrate-scale
  :parameters (?s - t12) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action measure-water
  :parameters (?s - t13) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action create-flour-well
  :parameters (?s - t14) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action whisk-eggs-water
  :parameters (?s - t15) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d34)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action prepare-containers
  :parameters (?s - t16) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (d22)) (at start (d36)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action organize-workstation
  :parameters (?s - t17) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action weigh-flour
  :parameters (?s - t18) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d28)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action retrieve-pasta-machine
  :parameters (?s - t19) :duration (= ?duration 180)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action knead-dough
  :parameters (?s - t20) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action squeeze-air
  :parameters (?s - t21) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action label-freezer-bags
  :parameters (?s - t22) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d3)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action check-egg-wash
  :parameters (?s - t23) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (d11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action clean-whisk
  :parameters (?s - t24) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d31)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action add-eggs-to-well
  :parameters (?s - t25) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action dispose-eggshells
  :parameters (?s - t26) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action combine-ingredients
  :parameters (?s - t27) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action set-out-bowl
  :parameters (?s - t28) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action sift-cornstarch
  :parameters (?s - t29) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (d3)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action gather-ingredients
  :parameters (?s - t30) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action wash-hands
  :parameters (?s - t31) :duration (= ?duration 40)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action flour-work-surface
  :parameters (?s - t32) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d17)) (at start (d34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action dust-machine-rollers
  :parameters (?s - t33) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d10)) (at start (d19)) (at start (d23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action check-salt
  :parameters (?s - t34) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action set-rest-timer
  :parameters (?s - t35) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (d22)) (at start (d34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action warm-water
  :parameters (?s - t36) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action clear-rolling-space
  :parameters (?s - t37) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d30)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action roll-dough
  :parameters (?s - t38) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d31)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action sharpen-cutter
  :parameters (?s - t39) :duration (= ?duration 360)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action oil-machine-gears
  :parameters (?s - t40) :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (d36)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action wrap-dough
  :parameters (?s - t41) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d20)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action put-away-flour
  :parameters (?s - t42) :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action rinse-measuring-cups
  :parameters (?s - t43) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action inspect-dough
  :parameters (?s - t44) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d10)) (at start (d13)) (at start (d34)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action fill-cornstarch-shaker
  :parameters (?s - t45) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action adjust-machine-setting
  :parameters (?s - t46) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action prepare-damp-cloth
  :parameters (?s - t47) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d36)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action check-square-cutter
  :parameters (?s - t48) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action fetch-thermometer
  :parameters (?s - t49) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action pour-water
  :parameters (?s - t50) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (d18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
)