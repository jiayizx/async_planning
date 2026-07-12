(define (domain cocoa-substitute)
 (:requirements :durative-actions :typing)
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
  (slot51 ?s - step) (slot52 ?s - step) (slot53 ?s - step) (slot54 ?s - step) (slot55 ?s - step)
  (slot56 ?s - step) (slot57 ?s - step) (slot58 ?s - step) (slot59 ?s - step) (slot60 ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
  (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
  (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60))

 (:durative-action step1_sift-cocoa
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot1 ?s)) (at start (step_pending ?s)) (at start (d15)) (at start (d23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action step2_whisk-final-mixture
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot2 ?s)) (at start (step_pending ?s)) (at start (d13)) (at start (d37)) (at start (d48)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action step3_measure-sugar
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot3 ?s)) (at start (step_pending ?s)) (at start (d9)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action step4_melt-butter
  :parameters (?s - step) :duration (= ?duration 45)
  :condition (and (at start (slot4 ?s)) (at start (step_pending ?s)) (at start (d33)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action step5_add-salt
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (slot5 ?s)) (at start (step_pending ?s)) (at start (d39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action step6_warm-cream
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (slot6 ?s)) (at start (step_pending ?s)) (at start (d12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action step7_locate-spoons
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot7 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action step8_grease-pan
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot8 ?s)) (at start (step_pending ?s)) (at start (d51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action step9_combine-dry-ingredients
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot9 ?s)) (at start (step_pending ?s)) (at start (d28)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action step10_check-cocoa-expiration
  :parameters (?s - step) :duration (= ?duration 15)
  :condition (and (at start (slot10 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action step11_beat-eggs
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot11 ?s)) (at start (step_pending ?s)) (at start (d44)) (at start (d45)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action step12_remove-cream
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot12 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action step13_fold-wet-into-dry
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (slot13 ?s)) (at start (step_pending ?s)) (at start (d20)) (at start (d22)) (at start (d30)) (at start (d40)) (at start (d55)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action step14_measure-vanilla
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot14 ?s)) (at start (step_pending ?s)) (at start (d15)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action step15_clear-counter
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot15 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action step16_sanitize-tools
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot16 ?s)) (at start (step_pending ?s)) (at start (d7)) (at start (d26)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action step17_prepare-cooling-rack
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot17 ?s)) (at start (step_pending ?s)) (at start (d48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action step18_set-timer
  :parameters (?s - step) :duration (= ?duration 10)
  :condition (and (at start (slot18 ?s)) (at start (step_pending ?s)) (at start (d22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action step19_soften-oil
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot19 ?s)) (at start (step_pending ?s)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action step20_rinse-cups
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot20 ?s)) (at start (step_pending ?s)) (at start (d15)) (at start (d16)) (at start (d33)) (at start (d34)) (at start (d51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action step21_organize-spices
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (slot21 ?s)) (at start (step_pending ?s)) (at start (d27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action step22_measure-shortening
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot22 ?s)) (at start (step_pending ?s)) (at start (d14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action step23_whisk-cocoa-into-fat
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot23 ?s)) (at start (step_pending ?s)) (at start (d11)) (at start (d27)) (at start (d32)) (at start (d34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action step24_calibrate-scale
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot24 ?s)) (at start (step_pending ?s)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action step25_scrape-bowl
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot25 ?s)) (at start (step_pending ?s)) (at start (d20)) (at start (d38)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action step26_dry-tools
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot26 ?s)) (at start (step_pending ?s)) (at start (d28)) (at start (d51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action step27_gather-ingredients
  :parameters (?s - step) :duration (= ?duration 480)
  :condition (and (at start (slot27 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action step28_preheat-oven
  :parameters (?s - step) :duration (= ?duration 900)
  :condition (and (at start (slot28 ?s)) (at start (step_pending ?s)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action step29_line-pan
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot29 ?s)) (at start (step_pending ?s)) (at start (d8)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action step30_sift-flour
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (slot30 ?s)) (at start (step_pending ?s)) (at start (d9)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action step31_measure-liquid
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot31 ?s)) (at start (step_pending ?s)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action step32_soften-cream-cheese
  :parameters (?s - step) :duration (= ?duration 1800)
  :condition (and (at start (slot32 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action step33_plug-mixer
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot33 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action step34_check-bowls
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot34 ?s)) (at start (step_pending ?s)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action step35_wipe-prep-table
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot35 ?s)) (at start (step_pending ?s)) (at start (d19)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action step36_label-containers
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (slot36 ?s)) (at start (step_pending ?s)) (at start (d27)) (at start (d34)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action step37_melt-coconut-oil
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot37 ?s)) (at start (step_pending ?s)) (at start (d23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action step38_read-recipe
  :parameters (?s - step) :duration (= ?duration 360)
  :condition (and (at start (slot38 ?s)) (at start (step_pending ?s)) (at start (d41)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action step39_measure-cocoa
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot39 ?s)) (at start (step_pending ?s)) (at start (d23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action step40_mix-cocoa-paste
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot40 ?s)) (at start (step_pending ?s)) (at start (d23)) (at start (d24)) (at start (d25)) (at start (d31)) (at start (d59)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
 (:durative-action step41_put-on-apron
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot41 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))
 (:durative-action step42_dispose-packaging
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot42 ?s)) (at start (step_pending ?s)) (at start (d1)) (at start (d19)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))
 (:durative-action step43_combine-sugar-and-fats
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot43 ?s)) (at start (step_pending ?s)) (at start (d3)) (at start (d41)) (at start (d44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))
 (:durative-action step44_soften-butter
  :parameters (?s - step) :duration (= ?duration 2700)
  :condition (and (at start (slot44 ?s)) (at start (step_pending ?s)) (at start (d22)) (at start (d27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))
 (:durative-action step45_room-temperature-dairy
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (slot45 ?s)) (at start (step_pending ?s)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))
 (:durative-action step46_sift-leaveners
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot46 ?s)) (at start (step_pending ?s)) (at start (d37)) (at start (d52)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))
 (:durative-action step47_flour-work-surface
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot47 ?s)) (at start (step_pending ?s)) (at start (d4)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))
 (:durative-action step48_prepare-garnishes
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot48 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))
 (:durative-action step49_wash-hands
  :parameters (?s - step) :duration (= ?duration 40)
  :condition (and (at start (slot49 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))
 (:durative-action step50_test-oven
  :parameters (?s - step) :duration (= ?duration 600)
  :condition (and (at start (slot50 ?s)) (at start (step_pending ?s)) (at start (d28)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))
 (:durative-action step51_beat-sugar-into-cocoa
  :parameters (?s - step) :duration (= ?duration 240)
  :condition (and (at start (slot51 ?s)) (at start (step_pending ?s)) (at start (d33)) (at start (d35)) (at start (d37)) (at start (d39)) (at start (d43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d51))))
 (:durative-action step52_purchase-cocoa
  :parameters (?s - step) :duration (= ?duration 3600)
  :condition (and (at start (slot52 ?s)) (at start (step_pending ?s)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d52))))
 (:durative-action step53_check-allergies
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot53 ?s)) (at start (step_pending ?s)) (at start (d28)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d53))))
 (:durative-action step54_set-damp-cloth
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot54 ?s)) (at start (step_pending ?s)) (at start (d13)) (at start (d28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d54))))
 (:durative-action step55_pour-batter
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot55 ?s)) (at start (step_pending ?s)) (at start (d30)) (at start (d36)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d55))))
 (:durative-action step56_clean-flour-dust
  :parameters (?s - step) :duration (= ?duration 300)
  :condition (and (at start (slot56 ?s)) (at start (step_pending ?s)) (at start (d11)) (at start (d31)) (at start (d38)) (at start (d50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d56))))
 (:durative-action step57_place-in-oven
  :parameters (?s - step) :duration (= ?duration 30)
  :condition (and (at start (slot57 ?s)) (at start (step_pending ?s)) (at start (d4)) (at start (d6)) (at start (d9)) (at start (d15)) (at start (d38)) (at start (d41)) (at start (d51)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d57))))
 (:durative-action step58_store-cocoa
  :parameters (?s - step) :duration (= ?duration 120)
  :condition (and (at start (slot58 ?s)) (at start (step_pending ?s)) (at start (d46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d58))))
 (:durative-action step59_measure-sweetener
  :parameters (?s - step) :duration (= ?duration 60)
  :condition (and (at start (slot59 ?s)) (at start (step_pending ?s)) (at start (d45)) (at start (d49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d59))))
 (:durative-action step60_note-substitution
  :parameters (?s - step) :duration (= ?duration 180)
  :condition (and (at start (slot60 ?s)) (at start (step_pending ?s)) (at start (d10)) (at start (d28)) (at start (d30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d60))))
)