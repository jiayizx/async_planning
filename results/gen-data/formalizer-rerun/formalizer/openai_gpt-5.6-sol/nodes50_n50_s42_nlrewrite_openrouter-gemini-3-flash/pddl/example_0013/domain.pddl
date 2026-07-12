(define (domain ancient-ruins)
 (:requirements :typing :durative-actions)
 (:types step - object s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 - step)
 (:predicates
  (step_pending ?x - step) (step_done ?x - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50))

 (:durative-action apply-for-visa
  :parameters (?x - s1) :duration (= ?duration 1814400)
  :condition (and (at start (step_pending ?x)) (at start (d49)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d1))))
 (:durative-action purchase-flight-tickets
  :parameters (?x - s2) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (d36)) (at start (d42)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d2))))
 (:durative-action research-site-history
  :parameters (?x - s3) :duration (= ?duration 14400)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d3))))
 (:durative-action buy-hiking-boots
  :parameters (?x - s4) :duration (= ?duration 7200)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d4))))
 (:durative-action visit-travel-clinic
  :parameters (?x - s5) :duration (= ?duration 3600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d5))))
 (:durative-action book-local-guide
  :parameters (?x - s6) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (d43)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d6))))
 (:durative-action pack-camera-kit
  :parameters (?x - s7) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?x)) (at start (d46)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d7))))
 (:durative-action withdraw-local-currency
  :parameters (?x - s8) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (d20)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d8))))
 (:durative-action arrange-airport-shuttle
  :parameters (?x - s9) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (d14)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d9))))
 (:durative-action receive-vaccination-certificates
  :parameters (?x - s10) :duration (= ?duration 864000)
  :condition (and (at start (step_pending ?x)) (at start (d5)) (at start (d14)) (at start (d20)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d10))))
 (:durative-action read-discoverer-biography
  :parameters (?x - s11) :duration (= ?duration 21600)
  :condition (and (at start (step_pending ?x)) (at start (d32)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d11))))
 (:durative-action download-offline-maps
  :parameters (?x - s12) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (d26)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d12))))
 (:durative-action arrive-at-ruins-entrance
  :parameters (?x - s13) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (d8)) (at start (d24)) (at start (d26)) (at start (d34)) (at start (d40)) (at start (d50)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d13))))
 (:durative-action renew-passport
  :parameters (?x - s14) :duration (= ?duration 3628800)
  :condition (and (at start (step_pending ?x)) (at start (d38)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d14))))
 (:durative-action purchase-travel-insurance
  :parameters (?x - s15) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (d49)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d15))))
 (:durative-action photocopy-travel-documents
  :parameters (?x - s16) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (d1)) (at start (d14)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d16))))
 (:durative-action pack-first-aid-kit
  :parameters (?x - s17) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (d8)) (at start (d20)) (at start (d29)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d17))))
 (:durative-action request-time-off
  :parameters (?x - s18) :duration (= ?duration 86400)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d18))))
 (:durative-action check-into-hotel
  :parameters (?x - s19) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (d2)) (at start (d25)) (at start (d35)) (at start (d44)) (at start (d49)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d19))))
 (:durative-action buy-rugged-backpack
  :parameters (?x - s20) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (d29)) (at start (d43)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d20))))
 (:durative-action confirm-shuttle-pickup
  :parameters (?x - s21) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (d9)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d21))))
 (:durative-action meet-guide
  :parameters (?x - s22) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (d6)) (at start (d29)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d22))))
 (:durative-action buy-power-bank
  :parameters (?x - s23) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (d49)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d23))))
 (:durative-action pack-waterproof-clothing
  :parameters (?x - s24) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (d15)) (at start (d40)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d24))))
 (:durative-action wait-for-immunity
  :parameters (?x - s25) :duration (= ?duration 1209600)
  :condition (and (at start (step_pending ?x)) (at start (d5)) (at start (d14)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d25))))
 (:durative-action print-ruins-map
  :parameters (?x - s26) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (d3)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d26))))
 (:durative-action purchase-sim-card
  :parameters (?x - s27) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (d20)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d27))))
 (:durative-action break-in-boots
  :parameters (?x - s28) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?x)) (at start (d4)) (at start (d9)) (at start (d50)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d28))))
 (:durative-action research-weather
  :parameters (?x - s29) :duration (= ?duration 600)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d29))))
 (:durative-action charge-electronics
  :parameters (?x - s30) :duration (= ?duration 14400)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d30))))
 (:durative-action notify-bank
  :parameters (?x - s31) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (d14)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d31))))
 (:durative-action order-archaeology-textbook
  :parameters (?x - s32) :duration (= ?duration 432000)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d32))))
 (:durative-action present-ticket-at-gate
  :parameters (?x - s33) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (d14)) (at start (d26)) (at start (d47)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d33))))
 (:durative-action take-taxi-to-site
  :parameters (?x - s34) :duration (= ?duration 2700)
  :condition (and (at start (step_pending ?x)) (at start (d14)) (at start (d37)) (at start (d40)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d34))))
 (:durative-action pack-snacks
  :parameters (?x - s35) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (d4)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d35))))
 (:durative-action search-flight-deals
  :parameters (?x - s36) :duration (= ?duration 7200)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d36))))
 (:durative-action clean-camera-lenses
  :parameters (?x - s37) :duration (= ?duration 900)
  :condition (and (at start (step_pending ?x)) (at start (d7)) (at start (d29)) (at start (d42)) (at start (d50)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d37))))
 (:durative-action take-passport-photo
  :parameters (?x - s38) :duration (= ?duration 1800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d38))))
 (:durative-action recover-from-jet-lag
  :parameters (?x - s39) :duration (= ?duration 36000)
  :condition (and (at start (step_pending ?x)) (at start (d19)) (at start (d20)) (at start (d30)) (at start (d42)) (at start (d48)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d39))))
 (:durative-action pack-day-bag
  :parameters (?x - s40) :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?x)) (at start (d17)) (at start (d23)) (at start (d44)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d40))))
 (:durative-action format-memory-cards
  :parameters (?x - s41) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?x)) (at start (d7)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d41))))
 (:durative-action finish-archaeology-book
  :parameters (?x - s42) :duration (= ?duration 28800)
  :condition (and (at start (step_pending ?x)) (at start (d11)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d42))))
 (:durative-action buy-sun-hat
  :parameters (?x - s43) :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?x)) (at start (d48)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d43))))
 (:durative-action buy-water-filter-bottle
  :parameters (?x - s44) :duration (= ?duration 900)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d44))))
 (:durative-action wait-for-vacation-approval
  :parameters (?x - s45) :duration (= ?duration 259200)
  :condition (and (at start (step_pending ?x)) (at start (d18)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d45))))
 (:durative-action pack-hiking-boots
  :parameters (?x - s46) :duration (= ?duration 600)
  :condition (and (at start (step_pending ?x)) (at start (d4)) (at start (d20)) (at start (d21)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d46))))
 (:durative-action organize-itinerary-folder
  :parameters (?x - s47) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (d45)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d47))))
 (:durative-action visit-sporting-goods-store
  :parameters (?x - s48) :duration (= ?duration 3600)
  :condition (and (at start (step_pending ?x)) (at start (d4)))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d48))))
 (:durative-action save-trip-money
  :parameters (?x - s49) :duration (= ?duration 5184000)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d49))))
 (:durative-action learn-local-phrases
  :parameters (?x - s50) :duration (= ?duration 604800)
  :condition (at start (step_pending ?x))
  :effect (and (at start (not (step_pending ?x))) (at end (step_done ?x)) (at end (d50))))
)