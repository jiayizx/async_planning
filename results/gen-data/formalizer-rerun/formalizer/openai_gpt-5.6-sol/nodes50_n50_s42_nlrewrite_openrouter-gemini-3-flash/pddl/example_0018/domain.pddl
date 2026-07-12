(define (domain diabetes-management)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
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

 (:durative-action schedule-follow-up
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (d3)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p1))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action review-glucose-logs
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (d33)) (at start (d36)) (at start (d41)) (at start (d47)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p2))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action attend-diagnostic-consultation
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p3)) (at start (d17)) (at start (d22)) (at start (d30)) (at start (d32)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p3))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action meet-dietitian
  :parameters (?s - step) :duration (= ?duration 5400)
  :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p4))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action purchase-kitchen-scale
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p5)) (at start (d19)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p5))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action join-support-group
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (d18)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p6))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action research-low-glycemic-foods
  :parameters (?s - step) :duration (= ?duration 10800)
  :condition (and (at start (step_pending ?s)) (at start (p7)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p7))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action obtain-cgm-prescription
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p8)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p8))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action complete-metabolic-panel
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p9)) (at start (d17)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p9))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action adjust-insulin-dosage
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p10)) (at start (d2)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p10))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action buy-walking-shoes
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (p11)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p11))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action learn-lancet-use
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p12))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action create-meal-prep-schedule
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p13)) (at start (d1)) (at start (d4)) (at start (d32)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p13))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action clear-pantry
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p14)) (at start (d5)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p14))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action diabetic-eye-exam
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p15)) (at start (d17)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p15))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action establish-morning-checks
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p16)) (at start (d7)) (at start (d11)) (at start (d28)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p16))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action recognize-persistent-symptoms
  :parameters (?s - step) :duration (= ?duration 172800)
  :condition (and (at start (step_pending ?s)) (at start (p17)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p17))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action discuss-health-goals
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?s)) (at start (p18)) (at start (d16)) (at start (d17)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p18))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action order-test-strips
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p19)) (at start (d8)) (at start (d31)) (at start (d33)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p19))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action log-carbohydrate-intake
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (d4)) (at start (d26)) (at start (d29)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p20))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action set-medication-alarm
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p21)) (at start (d22)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p21))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action request-education-referral
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p22))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action inform-family
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p23)) (at start (d17)) (at start (d30)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p23))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action perform-finger-stick
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p24)) (at start (d12)) (at start (d16)) (at start (d25)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p24))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action watch-monitoring-video
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p25)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p25))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action shop-healthy-foods
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p26)) (at start (d14)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p26))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action submit-lab-results
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p27)) (at start (d9)) (at start (d19)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p27))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action buy-medical-alert-bracelet
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p28))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action fast-before-visit
  :parameters (?s - step) :duration (= ?duration 43200)
  :condition (and (at start (step_pending ?s)) (at start (p29)) (at start (d32)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p29))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action search-online-resources
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p30)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p30))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action check-pharmacy-insulin-stock
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p31)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p31))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action become-motivated
  :parameters (?s - step) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?s)) (at start (p32)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p32))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action calibrate-weight-scale
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p33)) (at start (d16)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p33))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action practice-mock-injection
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p34)) (at start (d16)) (at start (d21)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p34))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action read-insulin-resistance-book
  :parameters (?s - step) :duration (= ?duration 14400)
  :condition (and (at start (step_pending ?s)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p35))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action download-carb-charts
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p36)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p36))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action receive-formal-diagnosis
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p37)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p37))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action plan-diabetes-friendly-dinner
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p38)) (at start (d7)) (at start (d29)) (at start (d35)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p38))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action record-baseline-a1c
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p39)) (at start (d4)) (at start (d11)) (at start (d13)) (at start (d24)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p39))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action attend-nutrition-label-workshop
  :parameters (?s - step) :duration (= ?duration 7200)
  :condition (and (at start (step_pending ?s)) (at start (p40)) (at start (d3)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p40))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action consult-pharmacist
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p41)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p41))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action subscribe-cooking-magazine
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p42)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p42))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action purchase-sharps-container
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p43)) (at start (d28)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p43))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action pick-up-prescription
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p44)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p44))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action weigh-starting-point
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p45)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p45))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action set-up-grocery-delivery
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p46)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p46))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action learn-hypoglycemia-symptoms
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?s)) (at start (p47)) (at start (d12)) (at start (d30)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p47))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action inform-employer
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p48)) (at start (d3)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p48))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action professional-foot-exam
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p49)) (at start (d15)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p49))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action request-medical-records
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at start (not (p50))) (at end (step_done ?s)) (at end (d50))))
)