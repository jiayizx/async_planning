(define (domain measure-herbs)
 (:requirements :durative-actions :typing)
 (:types
  step - object
  t1 t2 t3 t4 t5 t6 t7 t8 t9 t10
  t11 t12 t13 t14 t15 t16 t17 t18 t19 t20
  t21 t22 t23 t24 t25 t26 t27 t28 t29 t30
  t31 t32 t33 t34 t35 t36 t37 t38 t39 t40
  t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 - step)
 (:predicates
  (step_pending ?s - step)
  (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50))

 (:durative-action clear-workspace
  :parameters (?s - t1)
  :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))

 (:durative-action calibrate-scale
  :parameters (?s - t2)
  :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))

 (:durative-action calculate-ratio
  :parameters (?s - t3)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p13)) (at start (p20)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))

 (:durative-action retrieve-fresh-basil
  :parameters (?s - t4)
  :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))

 (:durative-action locate-dried-basil
  :parameters (?s - t5)
  :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))

 (:durative-action compost-stems
  :parameters (?s - t6)
  :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (p11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))

 (:durative-action record-weight-difference
  :parameters (?s - t7)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p33)) (at start (p49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))

 (:durative-action clean-weighing-bowls
  :parameters (?s - t8)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p10)) (at start (p34)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))

 (:durative-action tare-scale
  :parameters (?s - t9)
  :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (p15)) (at start (p16)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))

 (:durative-action sanitize-stripping-tool
  :parameters (?s - t10)
  :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))

 (:durative-action strip-fresh-leaves
  :parameters (?s - t11)
  :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))

 (:durative-action rinse-fresh-herbs
  :parameters (?s - t12)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p18)) (at start (p34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))

 (:durative-action review-recipe-requirements
  :parameters (?s - t13)
  :duration (= ?duration 180)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))

 (:durative-action pat-herbs-dry
  :parameters (?s - t14)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p16)) (at start (p26)) (at start (p49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))

 (:durative-action set-out-ramekins
  :parameters (?s - t15)
  :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))

 (:durative-action inspect-fresh-herbs
  :parameters (?s - t16)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))

 (:durative-action sharpen-shears
  :parameters (?s - t17)
  :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))

 (:durative-action gather-equipment
  :parameters (?s - t18)
  :duration (= ?duration 240)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))

 (:durative-action label-storage-containers
  :parameters (?s - t19)
  :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p37)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))

 (:durative-action check-conversion-chart
  :parameters (?s - t20)
  :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))

 (:durative-action organize-dried-herbs
  :parameters (?s - t21)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))

 (:durative-action roughly-chop-leaves
  :parameters (?s - t22)
  :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p13)) (at start (p16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))

 (:durative-action scoop-dried-herbs
  :parameters (?s - t23)
  :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))

 (:durative-action place-fresh-herbs-in-cup
  :parameters (?s - t24)
  :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p15)) (at start (p30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))

 (:durative-action fine-tune-mince
  :parameters (?s - t25)
  :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))

 (:durative-action air-dry-chopped-herbs
  :parameters (?s - t26)
  :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p22)) (at start (p25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))

 (:durative-action shake-off-moisture
  :parameters (?s - t27)
  :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p1)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))

 (:durative-action zero-scale-dried-sample
  :parameters (?s - t28)
  :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (p25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))

 (:durative-action preheat-fragrance-pan
  :parameters (?s - t29)
  :duration (= ?duration 180)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))

 (:durative-action weigh-dried-herbs
  :parameters (?s - t30)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p23)) (at start (p31)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))

 (:durative-action level-dried-spoon
  :parameters (?s - t31)
  :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (p33)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))

 (:durative-action seal-dried-herbs
  :parameters (?s - t32)
  :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p23)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))

 (:durative-action sift-dried-herbs
  :parameters (?s - t33)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))

 (:durative-action fill-soaking-basin
  :parameters (?s - t34)
  :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))

 (:durative-action mince-fresh-herbs
  :parameters (?s - t35)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p5)) (at start (p16)) (at start (p17)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))

 (:durative-action weigh-fresh-herbs
  :parameters (?s - t36)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p29)) (at start (p31)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))

 (:durative-action pack-fresh-herbs
  :parameters (?s - t37)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))

 (:durative-action remove-yellowed-leaves
  :parameters (?s - t38)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p14)) (at start (p15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))

 (:durative-action toast-dried-herbs
  :parameters (?s - t39)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))

 (:durative-action garnish-test-plate
  :parameters (?s - t40)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p17)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))

 (:durative-action adjust-seasoning
  :parameters (?s - t41)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p3)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))

 (:durative-action spin-herbs
  :parameters (?s - t42)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p34)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))

 (:durative-action separate-leaves
  :parameters (?s - t43)
  :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p4)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))

 (:durative-action drain-spinner
  :parameters (?s - t44)
  :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))

 (:durative-action crush-dried-herbs
  :parameters (?s - t45)
  :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))

 (:durative-action sterilize-cutting-board
  :parameters (?s - t46)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))

 (:durative-action final-blot
  :parameters (?s - t47)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))

 (:durative-action transfer-minced-herbs
  :parameters (?s - t48)
  :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (p25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))

 (:durative-action inventory-herb-supply
  :parameters (?s - t49)
  :duration (= ?duration 240)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))

 (:durative-action sort-by-leaf-size
  :parameters (?s - t50)
  :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
)