(define (domain start-working-out)
 (:requirements :durative-actions :typing)
 (:types step t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50))

 (:durative-action step-1-purchase-yoga-mat
  :parameters (?s - t1) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))
 (:durative-action step-2-research-gym-rates
  :parameters (?s - t2) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))
 (:durative-action step-3-create-strength-routine
  :parameters (?s - t3) :duration (= ?duration 10800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))
 (:durative-action step-4-buy-running-shoes
  :parameters (?s - t4) :duration (= ?duration 2700)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))
 (:durative-action step-5-sign-gym-contract
  :parameters (?s - t5) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p8)) (at start (p13)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))
 (:durative-action step-6-watch-squat-videos
  :parameters (?s - t6) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))
 (:durative-action step-7-clear-garage-space
  :parameters (?s - t7) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))
 (:durative-action step-8-pack-gym-bag
  :parameters (?s - t8) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p26)) (at start (p47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))
 (:durative-action step-9-post-day-one-photo
  :parameters (?s - t9) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))
 (:durative-action step-10-download-fitness-app
  :parameters (?s - t10) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))
 (:durative-action step-11-purchase-dumbbells
  :parameters (?s - t11) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))
 (:durative-action step-12-create-fitness-profile
  :parameters (?s - t12) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p10)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))
 (:durative-action step-13-set-workout-alarm
  :parameters (?s - t13) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p27)) (at start (p46)) (at start (p49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))
 (:durative-action step-14-order-athletic-clothing
  :parameters (?s - t14) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))
 (:durative-action step-15-measure-body
  :parameters (?s - t15) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))
 (:durative-action step-16-consult-doctor
  :parameters (?s - t16) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p15)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))
 (:durative-action step-17-wash-workout-clothes
  :parameters (?s - t17) :duration (= ?duration 5400)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p4)) (at start (p16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))
 (:durative-action step-18-dynamic-warmup
  :parameters (?s - t18) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p15)) (at start (p27)) (at start (p31)) (at start (p33)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))
 (:durative-action step-19-buy-water-jug
  :parameters (?s - t19) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))
 (:durative-action step-20-fill-water-jug
  :parameters (?s - t20) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p39)) (at start (p40)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))
 (:durative-action step-21-organize-home-equipment
  :parameters (?s - t21) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p11)) (at start (p16)) (at start (p26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))
 (:durative-action step-22-drive-to-fitness-center
  :parameters (?s - t22) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))
 (:durative-action step-23-scan-membership-card
  :parameters (?s - t23) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))
 (:durative-action step-24-research-protein-powders
  :parameters (?s - t24) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))
 (:durative-action step-25-mix-protein-shake
  :parameters (?s - t25) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (p35)) (at start (p37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))
 (:durative-action step-26-read-exercise-physiology
  :parameters (?s - t26) :duration (= ?duration 14400)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))
 (:durative-action step-27-plan-meal-menu
  :parameters (?s - t27) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p19)) (at start (p24)) (at start (p34)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))
 (:durative-action step-28-drink-water
  :parameters (?s - t28) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p27)) (at start (p35)) (at start (p47)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))
 (:durative-action step-29-clean-garage-floor
  :parameters (?s - t29) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))
 (:durative-action step-30-take-before-photo
  :parameters (?s - t30) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))
 (:durative-action step-31-shop-healthy-groceries
  :parameters (?s - t31) :duration (= ?duration 5400)
  :condition (and (at start (step_pending ?s)) (at start (p14)) (at start (p43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))
 (:durative-action step-32-practice-lunges
  :parameters (?s - t32) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p6)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))
 (:durative-action step-33-setup-workout-playlist
  :parameters (?s - t33) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))
 (:durative-action step-34-ask-workout-partner
  :parameters (?s - t34) :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))
 (:durative-action step-35-perform-pushups
  :parameters (?s - t35) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p32)) (at start (p49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))
 (:durative-action step-36-put-on-workout-clothes
  :parameters (?s - t36) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))
 (:durative-action step-37-treadmill-walk
  :parameters (?s - t37) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p5)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))
 (:durative-action step-38-apply-deodorant-balm
  :parameters (?s - t38) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p7)) (at start (p17)) (at start (p47)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))
 (:durative-action step-39-review-workout-plan
  :parameters (?s - t39) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (p41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))
 (:durative-action step-40-jumping-jacks
  :parameters (?s - t40) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))
 (:durative-action step-41-designate-keys-spot
  :parameters (?s - t41) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (p4)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))
 (:durative-action step-42-main-weightlifting-circuit
  :parameters (?s - t42) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))
 (:durative-action step-43-clean-refrigerator
  :parameters (?s - t43) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (p29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))
 (:durative-action step-44-put-on-heart-monitor
  :parameters (?s - t44) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))
 (:durative-action step-45-ask-neighbors
  :parameters (?s - t45) :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))
 (:durative-action step-46-set-fitness-goal
  :parameters (?s - t46) :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))
 (:durative-action step-47-purchase-whey-protein
  :parameters (?s - t47) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))
 (:durative-action step-48-cooldown-walk
  :parameters (?s - t48) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p17)) (at start (p21)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))
 (:durative-action step-49-research-protein-supplements
  :parameters (?s - t49) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))
 (:durative-action step-50-prepare-next-day-gym-bag
  :parameters (?s - t50) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
)