(define (domain library-downtown)
 (:requirements :typing :durative-actions)
 (:types step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (slot1 ?s - step) (slot2 ?s - step) (slot3 ?s - step) (slot4 ?s - step) (slot5 ?s - step)
  (slot6 ?s - step) (slot7 ?s - step) (slot8 ?s - step) (slot9 ?s - step) (slot10 ?s - step)
  (slot11 ?s - step) (slot12 ?s - step) (slot13 ?s - step) (slot14 ?s - step) (slot15 ?s - step)
  (slot16 ?s - step) (slot17 ?s - step) (slot18 ?s - step) (slot19 ?s - step) (slot20 ?s - step)
  (slot21 ?s - step) (slot22 ?s - step) (slot23 ?s - step) (slot24 ?s - step) (slot25 ?s - step)
  (slot26 ?s - step) (slot27 ?s - step) (slot28 ?s - step) (slot29 ?s - step) (slot30 ?s - step)
  (slot31 ?s - step) (slot32 ?s - step) (slot33 ?s - step) (slot34 ?s - step) (slot35 ?s - step)
  (slot36 ?s - step) (slot37 ?s - step) (slot38 ?s - step) (slot39 ?s - step) (slot40 ?s - step)
  (slot41 ?s - step) (slot42 ?s - step) (slot43 ?s - step) (slot44 ?s - step) (slot45 ?s - step)
  (slot46 ?s - step) (slot47 ?s - step) (slot48 ?s - step) (slot49 ?s - step) (slot50 ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
 )

 (:durative-action step1-walk-main-entrance
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot1 ?s)) (at start (step_pending ?s)) (at start (d13)) (at start (d14)) (at start (d17)) (at start (d19)) (at start (d24)) (at start (d29)) (at start (d39)) (at start (d44)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action step2-use-self-checkout
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot2 ?s)) (at start (step_pending ?s)) (at start (d8)) (at start (d22)) (at start (d24)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action step3-put-on-coat
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot3 ?s)) (at start (step_pending ?s)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action step4-check-operating-hours
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot4 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action step5-locate-library-card
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot5 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action step6-check-weather
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot6 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action step7-card-in-wallet
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot7 ?s)) (at start (step_pending ?s)) (at start (d5)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action step8-check-overdue-books
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot8 ?s)) (at start (step_pending ?s)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action step9-walk-stop-to-library
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (slot9 ?s)) (at start (step_pending ?s)) (at start (d15)) (at start (d25)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action step10-research-history-floor
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (slot10 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action step11-browse-new-arrivals
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (slot11 ?s)) (at start (step_pending ?s)) (at start (d8)) (at start (d16)) (at start (d20)) (at start (d42)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action step12-list-book-titles
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot12 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action step13-walk-to-stairs
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot13 ?s)) (at start (step_pending ?s)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action step14-decide-branch
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot14 ?s)) (at start (step_pending ?s)) (at start (d4)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action step15-leave-house
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot15 ?s)) (at start (step_pending ?s)) (at start (d7)) (at start (d18)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action step16-charge-phone
  :parameters (?s - step) :duration (= ?duration 1200)
  :condition (and (at start (slot16 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action step17-cross-street
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot17 ?s)) (at start (step_pending ?s)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action step18-put-on-shoes
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot18 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action step19-check-house-keys
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot19 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action step20-ask-librarian
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot20 ?s)) (at start (step_pending ?s)) (at start (d22)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action step21-find-quiet-desk
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot21 ?s)) (at start (step_pending ?s)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action step22-look-up-call-numbers
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot22 ?s)) (at start (step_pending ?s)) (at start (d26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action step23-locate-bookshelf
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot23 ?s)) (at start (step_pending ?s)) (at start (d5)) (at start (d25)) (at start (d40)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action step24-look-up-bus-schedule
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot24 ?s)) (at start (step_pending ?s)) (at start (d12)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action step25-pack-laptop
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot25 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action step26-check-bus-fare
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot26 ?s)) (at start (step_pending ?s)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action step27-select-book
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot27 ?s)) (at start (step_pending ?s)) (at start (d10)) (at start (d36)) (at start (d40)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action step28-lock-front-door
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot28 ?s)) (at start (step_pending ?s)) (at start (d18)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action step29-walk-to-bus-stop
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot29 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action step30-check-events-calendar
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot30 ?s)) (at start (step_pending ?s)) (at start (d40)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action step31-board-bus
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (slot31 ?s)) (at start (step_pending ?s)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action step32-pay-driver
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot32 ?s)) (at start (step_pending ?s)) (at start (d24)) (at start (d42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action step33-exit-bus
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot33 ?s)) (at start (step_pending ?s)) (at start (d24)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action step34-tell-roommate
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot34 ?s)) (at start (step_pending ?s)) (at start (d14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action step35-silence-phone
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (slot35 ?s)) (at start (step_pending ?s)) (at start (d5)) (at start (d30)) (at start (d46)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action step36-walk-to-information-desk
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot36 ?s)) (at start (step_pending ?s)) (at start (d14)) (at start (d18)) (at start (d26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action step37-walk-library-hallway
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot37 ?s)) (at start (step_pending ?s)) (at start (d9)) (at start (d18)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action step38-wave-security-guard
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (slot38 ?s)) (at start (step_pending ?s)) (at start (d15)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action step39-ride-bus-route
  :parameters (?s - step) :duration (= ?duration 1500)
  :condition (and (at start (slot39 ?s)) (at start (step_pending ?s)) (at start (d6)) (at start (d31)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action step40-find-tote-bag
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot40 ?s)) (at start (step_pending ?s)) (at start (d5)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action step41-decide-genre
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot41 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action step42-check-windows
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot42 ?s)) (at start (step_pending ?s)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action step43-walk-courtyard
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot43 ?s)) (at start (step_pending ?s)) (at start (d9)) (at start (d15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action step44-walk-concrete-steps
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot44 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action step45-pocket-bookmark
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (slot45 ?s)) (at start (step_pending ?s)) (at start (d12)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action step46-turn-off-lights
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot46 ?s)) (at start (step_pending ?s)) (at start (d19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action step47-clean-glasses
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot47 ?s)) (at start (step_pending ?s)) (at start (d6)) (at start (d8)) (at start (d11)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action step48-check-umbrella
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot48 ?s)) (at start (step_pending ?s)) (at start (d26)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action step49-gather-belongings
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (slot49 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action step50-unplug-laptop-charger
  :parameters (?s - step) :duration (= ?duration 15)
  :condition (and (at start (slot50 ?s)) (at start (step_pending ?s)) (at start (d16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
)