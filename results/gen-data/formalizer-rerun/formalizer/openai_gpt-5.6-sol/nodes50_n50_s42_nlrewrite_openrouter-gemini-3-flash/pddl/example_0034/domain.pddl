(define (domain dinner)
 (:requirements :durative-actions :typing)
 (:types
  step - object
  s1 s2 s3 s4 s5 s6 s7 s8 s9 s10
  s11 s12 s13 s14 s15 s16 s17 s18 s19 s20
  s21 s22 s23 s24 s25 s26 s27 s28 s29 s30
  s31 s32 s33 s34 s35 s36 s37 s38 s39 s40
  s41 s42 s43 s44 s45 s46 s47 s48 s49 s50 - step)
 (:predicates
  (step_pending ?s - step)
  (step_done ?s - step)
  (p1) (p2) (p3) (p4) (p5) (p6) (p7) (p8) (p9) (p10)
  (p11) (p12) (p13) (p14) (p15) (p16) (p17) (p18) (p19) (p20)
  (p21) (p22) (p23) (p24) (p25) (p26) (p27) (p28) (p29) (p30)
  (p31) (p32) (p33) (p34) (p35) (p36) (p37) (p38) (p39) (p40)
  (p41) (p42) (p43) (p44) (p45) (p46) (p47) (p48) (p49) (p50))

 (:durative-action season-steaks
  :parameters (?s - s1)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p1))))

 (:durative-action chop-onions
  :parameters (?s - s2)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p2))))

 (:durative-action plate-meal
  :parameters (?s - s3)
  :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p19)) (at start (p28)) (at start (p34)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p3))))

 (:durative-action harvest-herbs
  :parameters (?s - s4)
  :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p4))))

 (:durative-action light-candles
  :parameters (?s - s5)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p5))))

 (:durative-action prepare-balsamic-reduction
  :parameters (?s - s6)
  :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p6))))

 (:durative-action garnish-side-dishes
  :parameters (?s - s7)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p33)) (at start (p37)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p7))))

 (:durative-action shop-for-wine
  :parameters (?s - s8)
  :duration (= ?duration 2700)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p8))))

 (:durative-action sear-steaks
  :parameters (?s - s9)
  :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (p46)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p9))))

 (:durative-action toss-greens
  :parameters (?s - s10)
  :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p4)) (at start (p27)) (at start (p29)) (at start (p33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p10))))

 (:durative-action pour-water
  :parameters (?s - s11)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p25)) (at start (p35)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p11))))

 (:durative-action slice-baguette
  :parameters (?s - s12)
  :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p44)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p12))))

 (:durative-action grate-parmesan
  :parameters (?s - s13)
  :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p13))))

 (:durative-action soften-butter
  :parameters (?s - s14)
  :duration (= ?duration 1200)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p14))))

 (:durative-action thaw-shrimp
  :parameters (?s - s15)
  :duration (= ?duration 3600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p15))))

 (:durative-action dice-tomatoes
  :parameters (?s - s16)
  :duration (= ?duration 360)
  :condition (and (at start (step_pending ?s)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p16))))

 (:durative-action mix-vinaigrette
  :parameters (?s - s17)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p21)) (at start (p23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p17))))

 (:durative-action set-table
  :parameters (?s - s18)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p20)) (at start (p21)) (at start (p35)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p18))))

 (:durative-action boil-pasta
  :parameters (?s - s19)
  :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p43)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p19))))

 (:durative-action glaze-vegetables
  :parameters (?s - s20)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p6)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p20))))

 (:durative-action lay-napkins
  :parameters (?s - s21)
  :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p21))))

 (:durative-action clean-counters
  :parameters (?s - s22)
  :duration (= ?duration 900)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p22))))

 (:durative-action prepare-garlic-butter
  :parameters (?s - s23)
  :duration (= ?duration 420)
  :condition (and (at start (step_pending ?s)) (at start (p33)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p23))))

 (:durative-action open-wine
  :parameters (?s - s24)
  :duration (= ?duration 1800)
  :condition (and (at start (step_pending ?s)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p24))))

 (:durative-action preheat-oven
  :parameters (?s - s25)
  :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p31)) (at start (p36)) (at start (p42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p25))))

 (:durative-action macerate-onions
  :parameters (?s - s26)
  :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p16)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p26))))

 (:durative-action wash-lettuce
  :parameters (?s - s27)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p25)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p27))))

 (:durative-action rinse-herbs
  :parameters (?s - s28)
  :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p4)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p28))))

 (:durative-action toast-baguette
  :parameters (?s - s29)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p39)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p29))))

 (:durative-action shred-basil
  :parameters (?s - s30)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p42)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p30))))

 (:durative-action chill-dessert-plates
  :parameters (?s - s31)
  :duration (= ?duration 900)
  :condition (and (at start (step_pending ?s)) (at start (p44)) (at start (p50)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p31))))

 (:durative-action select-music
  :parameters (?s - s32)
  :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p32))))

 (:durative-action mince-shallots
  :parameters (?s - s33)
  :duration (= ?duration 480)
  :condition (and (at start (step_pending ?s)) (at start (p4)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p33))))

 (:durative-action strain-pasta
  :parameters (?s - s34)
  :duration (= ?duration 120)
  :condition (and (at start (step_pending ?s)) (at start (p13)) (at start (p19)) (at start (p23)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p34))))

 (:durative-action polish-wine-glasses
  :parameters (?s - s35)
  :duration (= ?duration 600)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p35))))

 (:durative-action arrange-bruschetta
  :parameters (?s - s36)
  :duration (= ?duration 360)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p36))))

 (:durative-action salt-salad
  :parameters (?s - s37)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p26)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p37))))

 (:durative-action place-appetizers
  :parameters (?s - s38)
  :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p2)) (at start (p16)) (at start (p25)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p38))))

 (:durative-action sanitize-board
  :parameters (?s - s39)
  :duration (= ?duration 300)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p39))))

 (:durative-action spread-butter
  :parameters (?s - s40)
  :duration (= ?duration 180)
  :condition (and (at start (step_pending ?s)) (at start (p12)) (at start (p14)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p40))))

 (:durative-action scoop-sorbet
  :parameters (?s - s41)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p31)) (at start (p48)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p41))))

 (:durative-action peel-garlic
  :parameters (?s - s42)
  :duration (= ?duration 240)
  :condition (and (at start (step_pending ?s)) (at start (p2)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p42))))

 (:durative-action fill-pot
  :parameters (?s - s43)
  :duration (= ?duration 120)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p43))))

 (:durative-action peel-devein-shrimp
  :parameters (?s - s44)
  :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p15)) (at start (p23)) (at start (p30)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p44))))

 (:durative-action dim-lights
  :parameters (?s - s45)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p28)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p45))))

 (:durative-action preheat-skillet
  :parameters (?s - s46)
  :duration (= ?duration 300)
  :condition (and (at start (step_pending ?s)) (at start (p22)) (at start (p36)) (at start (p49)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p46))))

 (:durative-action rest-meat
  :parameters (?s - s47)
  :duration (= ?duration 600)
  :condition (and (at start (step_pending ?s)) (at start (p1)) (at start (p9)) (at start (p16)) (at start (p32)) (at start (p36)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p47))))

 (:durative-action wipe-wine-bottle
  :parameters (?s - s48)
  :duration (= ?duration 60)
  :condition (and (at start (step_pending ?s)) (at start (p21)) (at start (p27)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p48))))

 (:durative-action measure-balsamic
  :parameters (?s - s49)
  :duration (= ?duration 60)
  :condition (at start (step_pending ?s))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p49))))

 (:durative-action drive-home
  :parameters (?s - s50)
  :duration (= ?duration 1200)
  :condition (and (at start (step_pending ?s)) (at start (p8)) (at start (p20)) (at start (p22)))
  :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (p50))))
)