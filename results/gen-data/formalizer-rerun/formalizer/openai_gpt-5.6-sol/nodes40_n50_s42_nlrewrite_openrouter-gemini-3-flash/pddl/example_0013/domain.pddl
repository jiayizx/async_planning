(define (domain cucumber-sandwich)
 (:requirements :durative-actions :typing)
 (:types step s1 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 s12 s13 s14 s15 s16 s17 s18 s19 s20 s21 s22 s23 s24 s25 s26 s27 s28 s29 s30 s31 s32 s33 s34 s35 s36 s37 s38 s39 s40 - step)
 (:predicates
  (step_pending ?s - step) (step_done ?s - step)
  (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
  (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
  (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
  (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40))

 (:durative-action slice-cucumber
  :parameters (?s - s1) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))
 (:durative-action retrieve-butter-knife
  :parameters (?s - s2) :duration (= ?duration 10)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))
 (:durative-action soften-cream-cheese
  :parameters (?s - s3) :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))
 (:durative-action toast-bread
  :parameters (?s - s4) :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (d8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))
 (:durative-action butter-bread
  :parameters (?s - s5) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (d30)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))
 (:durative-action wash-dill
  :parameters (?s - s6) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d13)) (at start (d36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))
 (:durative-action peel-cucumber
  :parameters (?s - s7) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))
 (:durative-action retrieve-bread
  :parameters (?s - s8) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))
 (:durative-action locate-dill
  :parameters (?s - s9) :duration (= ?duration 15)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))
 (:durative-action clear-counter
  :parameters (?s - s10) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d38)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))
 (:durative-action find-seasonings
  :parameters (?s - s11) :duration (= ?duration 30)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))
 (:durative-action dry-dill
  :parameters (?s - s12) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))
 (:durative-action select-dill
  :parameters (?s - s13) :duration (= ?duration 40)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))
 (:durative-action chop-dill
  :parameters (?s - s14) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d16)) (at start (d35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))
 (:durative-action mix-herbs
  :parameters (?s - s15) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d3)) (at start (d17)) (at start (d22)) (at start (d36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))
 (:durative-action remove-dill-stems
  :parameters (?s - s16) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (d6)) (at start (d28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))
 (:durative-action mince-garlic
  :parameters (?s - s17) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d6)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))
 (:durative-action season-filling
  :parameters (?s - s18) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))
 (:durative-action grind-pepper
  :parameters (?s - s19) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))
 (:durative-action spread-garlic-herb-mixture
  :parameters (?s - s20) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d29)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))
 (:durative-action remove-cucumber-ends
  :parameters (?s - s21) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (d7)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))
 (:durative-action measure-cream-cheese
  :parameters (?s - s22) :duration (= ?duration 30)
  :condition (and (at start (step_pending ?s)) (at start (d26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))
 (:durative-action spread-moisture-barrier
  :parameters (?s - s23) :duration (= ?duration 45)
  :condition (and (at start (step_pending ?s)) (at start (d2)) (at start (d12)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))
 (:durative-action set-serving-plate
  :parameters (?s - s24) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (d33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))
 (:durative-action season-cucumber-slices
  :parameters (?s - s25) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d21)) (at start (d33)) (at start (d34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))
 (:durative-action open-cream-cheese
  :parameters (?s - s26) :duration (= ?duration 10)
  :condition (and (at start (step_pending ?s)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))
 (:durative-action rinse-cucumber
  :parameters (?s - s27) :duration (= ?duration 20)
  :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d32)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))
 (:durative-action gather-cutting-tools
  :parameters (?s - s28) :duration (= ?duration 30)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))
 (:durative-action combine-garlic
  :parameters (?s - s29) :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (d17)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))
 (:durative-action retrieve-butter
  :parameters (?s - s30) :duration (= ?duration 15)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))
 (:durative-action check-cucumber
  :parameters (?s - s31) :duration (= ?duration 10)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))
 (:durative-action temper-cream-cheese
  :parameters (?s - s32) :duration (= ?duration 1800)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))
 (:durative-action drain-cucumber
  :parameters (?s - s33) :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (d31)) (at start (d37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))
 (:durative-action remove-bread-slices
  :parameters (?s - s34) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (d8)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))
 (:durative-action wipe-knife
  :parameters (?s - s35) :duration (= ?duration 15)
  :condition (and (at start (step_pending ?s)) (at start (d30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))
 (:durative-action zest-lemon
  :parameters (?s - s36) :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))
 (:durative-action clean-island
  :parameters (?s - s37) :duration (= ?duration 180)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))
 (:durative-action position-toaster
  :parameters (?s - s38) :duration (= ?duration 20)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))
 (:durative-action compost-scraps
  :parameters (?s - s39) :duration (= ?duration 40)
  :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))
 (:durative-action wash-cutting-board
  :parameters (?s - s40) :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (d28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))
)