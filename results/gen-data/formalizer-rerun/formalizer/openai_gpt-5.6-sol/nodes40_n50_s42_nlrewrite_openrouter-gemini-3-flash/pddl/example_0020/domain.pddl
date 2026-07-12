(define (domain family-dinner)
  (:requirements :durative-actions :typing)
  (:types step t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 - step)
  (:predicates
    (pending ?s - step) (step-done ?s - step)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
    (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
    (dinner-ready))

  (:durative-action step1-polish-silverware
    :parameters (?s - t1) :duration (= ?duration 1800)
    :condition (and (at start (pending ?s)) (at start (d20)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d1))))

  (:durative-action step2-research-recipe
    :parameters (?s - t2) :duration (= ?duration 1200)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d2))))

  (:durative-action step3-wash-peel-carrots
    :parameters (?s - t3) :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (d26)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d3))))

  (:durative-action step4-sear-beef
    :parameters (?s - t4) :duration (= ?duration 900)
    :condition (and (at start (pending ?s)) (at start (d20)) (at start (d40)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d4))))

  (:durative-action step5-set-tablecloth
    :parameters (?s - t5) :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (d10)) (at start (d15)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d5))))

  (:durative-action step6-whip-cream
    :parameters (?s - t6) :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (d28)) (at start (d34)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d6))))

  (:durative-action step7-saute-onions-garlic
    :parameters (?s - t7) :duration (= ?duration 480)
    :condition (and (at start (pending ?s)) (at start (d3)) (at start (d21)) (at start (d25)) (at start (d30)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d7))))

  (:durative-action step8-chill-cream
    :parameters (?s - t8) :duration (= ?duration 3600)
    :condition (and (at start (pending ?s)) (at start (d6)) (at start (d28)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d8))))

  (:durative-action step9-iron-napkins
    :parameters (?s - t9) :duration (= ?duration 900)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d9))))

  (:durative-action step10-clear-mail
    :parameters (?s - t10) :duration (= ?duration 120)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d10))))

  (:durative-action step11-add-wine-reduction
    :parameters (?s - t11) :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (d7)) (at start (d19)) (at start (d24)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d11))))

  (:durative-action step12-chop-mushrooms-onions
    :parameters (?s - t12) :duration (= ?duration 900)
    :condition (and (at start (pending ?s)) (at start (d2)) (at start (d4)) (at start (d26)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d12))))

  (:durative-action step13-simmer-stew
    :parameters (?s - t13) :duration (= ?duration 10800)
    :condition (and (at start (pending ?s)) (at start (d6)) (at start (d7)) (at start (d17)) (at start (d38)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d13))))

  (:durative-action step14-prepare-salad
    :parameters (?s - t14) :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (d26)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d14))))

  (:durative-action step15-choose-playlist
    :parameters (?s - t15) :duration (= ?duration 600)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d15))))

  (:durative-action step16-decant-wine
    :parameters (?s - t16) :duration (= ?duration 2700)
    :condition (and (at start (pending ?s)) (at start (d18)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d16))))

  (:durative-action step17-saute-mushrooms
    :parameters (?s - t17) :duration (= ?duration 720)
    :condition (and (at start (pending ?s)) (at start (d12)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d17))))

  (:durative-action step18-open-wine
    :parameters (?s - t18) :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (d22)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d18))))

  (:durative-action step19-prepare-bouquet-garni
    :parameters (?s - t19) :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (d25)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d19))))

  (:durative-action step20-grocery-store
    :parameters (?s - t20) :duration (= ?duration 3600)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d20))))

  (:durative-action step21-sharpen-knives
    :parameters (?s - t21) :duration (= ?duration 300)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d21))))

  (:durative-action step22-pick-up-baguette
    :parameters (?s - t22) :duration (= ?duration 1200)
    :condition (and (at start (pending ?s)) (at start (d20)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d22))))

  (:durative-action step23-whisk-vinaigrette
    :parameters (?s - t23) :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (d14)) (at start (d33)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d23))))

  (:durative-action step24-measure-stock
    :parameters (?s - t24) :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (d2)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d24))))

  (:durative-action step25-scrub-potatoes
    :parameters (?s - t25) :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (d22)) (at start (d26)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d25))))

  (:durative-action step26-wash-vegetables
    :parameters (?s - t26) :duration (= ?duration 900)
    :condition (and (at start (pending ?s)) (at start (d10)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d26))))

  (:durative-action step27-arrange-centerpiece
    :parameters (?s - t27) :duration (= ?duration 1200)
    :condition (and (at start (pending ?s)) (at start (d1)) (at start (d31)) (at start (d33)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d27))))

  (:durative-action step28-take-out-cream
    :parameters (?s - t28) :duration (= ?duration 60)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d28))))

  (:durative-action step29-fold-napkins
    :parameters (?s - t29) :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (d10)) (at start (d34)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d29))))

  (:durative-action step30-light-candles
    :parameters (?s - t30) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (d15)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d30))))

  (:durative-action step31-place-plates-cutlery
    :parameters (?s - t31) :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (d5)) (at start (d9)) (at start (d10)) (at start (d13)) (at start (d30)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d31))))

  (:durative-action step32-warm-platters
    :parameters (?s - t32) :duration (= ?duration 900)
    :condition (and (at start (pending ?s)) (at start (d10)) (at start (d14)) (at start (d29)) (at start (d40)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d32))))

  (:durative-action step33-slice-baguette
    :parameters (?s - t33) :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (d4)) (at start (d37)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d33))))

  (:durative-action step34-prepare-dessert-berries
    :parameters (?s - t34) :duration (= ?duration 720)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d34))))

  (:durative-action step35-pour-water
    :parameters (?s - t35) :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (d4)) (at start (d15)) (at start (d40)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d35))))

  (:durative-action step36-transfer-food
    :parameters (?s - t36) :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (d12)) (at start (d23)) (at start (d27)) (at start (d32)) (at start (d34)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d36))))

  (:durative-action step37-check-oven
    :parameters (?s - t37) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (d15)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d37))))

  (:durative-action step38-grate-parmesan
    :parameters (?s - t38) :duration (= ?duration 240)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d38))))

  (:durative-action step39-call-family
    :parameters (?s - t39) :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (d27)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d39)) (at end (dinner-ready))))

  (:durative-action step40-preheat-oven
    :parameters (?s - t40) :duration (= ?duration 600)
    :condition (and (at start (pending ?s)) (at start (d19)) (at start (d37)))
    :effect (and (at start (not (pending ?s))) (at end (step-done ?s)) (at end (d40))))
)