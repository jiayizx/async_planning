(define (domain quad_strengthening)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (done ?s - step)
  )

  (:durative-action step1 :parameters (?s - step) :duration (= ?duration 300)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step2 :parameters (?s - step ?s22 ?s48 ?s52 ?s73 ?s79 - step) :duration (= ?duration 30)
    :condition (and (at start (pending ?s)) (at start (done ?s22)) (at start (done ?s48)) (at start (done ?s52)) (at start (done ?s73)) (at start (done ?s79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step3 :parameters (?s - step ?s4 ?s37 ?s63 - step) :duration (= ?duration 20)
    :condition (and (at start (pending ?s)) (at start (done ?s4)) (at start (done ?s37)) (at start (done ?s63)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step4 :parameters (?s - step) :duration (= ?duration 60)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step5 :parameters (?s - step) :duration (= ?duration 180)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step6 :parameters (?s - step ?s15 - step) :duration (= ?duration 15)
    :condition (and (at start (pending ?s)) (at start (done ?s15)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step7 :parameters (?s - step ?s63 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s63)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step8 :parameters (?s - step ?s68 - step) :duration (= ?duration 15)
    :condition (and (at start (pending ?s)) (at start (done ?s68)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step9 :parameters (?s - step ?s51 - step) :duration (= ?duration 5)
    :condition (and (at start (pending ?s)) (at start (done ?s51)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step10 :parameters (?s - step) :duration (= ?duration 600)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step11 :parameters (?s - step ?s13 ?s20 ?s59 - step) :duration (= ?duration 4)
    :condition (and (at start (pending ?s)) (at start (done ?s13)) (at start (done ?s20)) (at start (done ?s59)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step12 :parameters (?s - step) :duration (= ?duration 20)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step13 :parameters (?s - step ?s79 - step) :duration (= ?duration 45)
    :condition (and (at start (pending ?s)) (at start (done ?s79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step14 :parameters (?s - step ?s20 ?s26 - step) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done ?s20)) (at start (done ?s26)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step15 :parameters (?s - step ?s75 - step) :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done ?s75)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step16 :parameters (?s - step ?s5 ?s64 ?s68 - step) :duration (= ?duration 30)
    :condition (and (at start (pending ?s)) (at start (done ?s5)) (at start (done ?s64)) (at start (done ?s68)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step17 :parameters (?s - step ?s10 ?s33 ?s34 ?s50 - step) :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done ?s10)) (at start (done ?s33)) (at start (done ?s34)) (at start (done ?s50)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step18 :parameters (?s - step ?s10 ?s26 ?s34 ?s71 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s10)) (at start (done ?s26)) (at start (done ?s34)) (at start (done ?s71)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step19 :parameters (?s - step ?s47 - step) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done ?s47)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step20 :parameters (?s - step ?s56 - step) :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (done ?s56)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step21 :parameters (?s - step ?s3 ?s9 ?s55 ?s76 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s3)) (at start (done ?s9)) (at start (done ?s55)) (at start (done ?s76)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step22 :parameters (?s - step ?s75 - step) :duration (= ?duration 15)
    :condition (and (at start (pending ?s)) (at start (done ?s75)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step23 :parameters (?s - step ?s59 ?s71 - step) :duration (= ?duration 3)
    :condition (and (at start (pending ?s)) (at start (done ?s59)) (at start (done ?s71)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step24 :parameters (?s - step ?s56 ?s77 - step) :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done ?s56)) (at start (done ?s77)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step25 :parameters (?s - step ?s70 - step) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done ?s70)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step26 :parameters (?s - step ?s1 ?s48 ?s67 ?s77 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s1)) (at start (done ?s48)) (at start (done ?s67)) (at start (done ?s77)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step27 :parameters (?s - step ?s24 ?s74 - step) :duration (= ?duration 30)
    :condition (and (at start (pending ?s)) (at start (done ?s24)) (at start (done ?s74)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step28 :parameters (?s - step) :duration (= ?duration 120)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step29 :parameters (?s - step ?s7 ?s22 ?s54 ?s61 ?s64 - step) :duration (= ?duration 15)
    :condition (and (at start (pending ?s)) (at start (done ?s7)) (at start (done ?s22)) (at start (done ?s54)) (at start (done ?s61)) (at start (done ?s64)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step30 :parameters (?s - step ?s11 ?s13 - step) :duration (= ?duration 5)
    :condition (and (at start (pending ?s)) (at start (done ?s11)) (at start (done ?s13)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step31 :parameters (?s - step ?s46 ?s76 - step) :duration (= ?duration 5)
    :condition (and (at start (pending ?s)) (at start (done ?s46)) (at start (done ?s76)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step32 :parameters (?s - step ?s69 ?s75 ?s76 ?s78 - step) :duration (= ?duration 45)
    :condition (and (at start (pending ?s)) (at start (done ?s69)) (at start (done ?s75)) (at start (done ?s76)) (at start (done ?s78)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step33 :parameters (?s - step) :duration (= ?duration 30)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step34 :parameters (?s - step ?s79 - step) :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done ?s79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step35 :parameters (?s - step ?s7 ?s74 - step) :duration (= ?duration 5)
    :condition (and (at start (pending ?s)) (at start (done ?s7)) (at start (done ?s74)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step36 :parameters (?s - step ?s2 ?s21 ?s37 ?s79 - step) :duration (= ?duration 4)
    :condition (and (at start (pending ?s)) (at start (done ?s2)) (at start (done ?s21)) (at start (done ?s37)) (at start (done ?s79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step37 :parameters (?s - step) :duration (= ?duration 15)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step38 :parameters (?s - step ?s1 ?s24 ?s56 ?s77 - step) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done ?s1)) (at start (done ?s24)) (at start (done ?s56)) (at start (done ?s77)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step39 :parameters (?s - step ?s7 ?s33 ?s48 ?s53 ?s65 ?s79 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s7)) (at start (done ?s33)) (at start (done ?s48)) (at start (done ?s53)) (at start (done ?s65)) (at start (done ?s79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step40 :parameters (?s - step ?s45 ?s61 ?s72 ?s80 - step) :duration (= ?duration 5)
    :condition (and (at start (pending ?s)) (at start (done ?s45)) (at start (done ?s61)) (at start (done ?s72)) (at start (done ?s80)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step41 :parameters (?s - step ?s30 ?s34 ?s65 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s30)) (at start (done ?s34)) (at start (done ?s65)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step42 :parameters (?s - step ?s8 - step) :duration (= ?duration 5)
    :condition (and (at start (pending ?s)) (at start (done ?s8)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step43 :parameters (?s - step ?s18 ?s30 ?s47 ?s57 - step) :duration (= ?duration 5)
    :condition (and (at start (pending ?s)) (at start (done ?s18)) (at start (done ?s30)) (at start (done ?s47)) (at start (done ?s57)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step44 :parameters (?s - step ?s5 - step) :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done ?s5)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step45 :parameters (?s - step ?s5 - step) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done ?s5)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step46 :parameters (?s - step ?s11 ?s17 ?s21 ?s24 ?s36 ?s45 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s11)) (at start (done ?s17)) (at start (done ?s21)) (at start (done ?s24)) (at start (done ?s36)) (at start (done ?s45)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step47 :parameters (?s - step ?s24 ?s52 ?s56 ?s59 - step) :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (done ?s24)) (at start (done ?s52)) (at start (done ?s56)) (at start (done ?s59)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step48 :parameters (?s - step ?s7 ?s71 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s7)) (at start (done ?s71)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step49 :parameters (?s - step ?s79 - step) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done ?s79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step50 :parameters (?s - step ?s63 - step) :duration (= ?duration 3600)
    :condition (and (at start (pending ?s)) (at start (done ?s63)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step51 :parameters (?s - step) :duration (= ?duration 120)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step52 :parameters (?s - step) :duration (= ?duration 300)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step53 :parameters (?s - step ?s13 ?s51 ?s64 ?s65 ?s76 - step) :duration (= ?duration 15)
    :condition (and (at start (pending ?s)) (at start (done ?s13)) (at start (done ?s51)) (at start (done ?s64)) (at start (done ?s65)) (at start (done ?s76)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step54 :parameters (?s - step ?s22 - step) :duration (= ?duration 20)
    :condition (and (at start (pending ?s)) (at start (done ?s22)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step55 :parameters (?s - step ?s5 ?s9 ?s13 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s5)) (at start (done ?s9)) (at start (done ?s13)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step56 :parameters (?s - step ?s67 ?s75 - step) :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done ?s67)) (at start (done ?s75)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step57 :parameters (?s - step ?s21 ?s34 - step) :duration (= ?duration 4)
    :condition (and (at start (pending ?s)) (at start (done ?s21)) (at start (done ?s34)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step58 :parameters (?s - step ?s70 - step) :duration (= ?duration 30)
    :condition (and (at start (pending ?s)) (at start (done ?s70)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step59 :parameters (?s - step ?s15 - step) :duration (= ?duration 480)
    :condition (and (at start (pending ?s)) (at start (done ?s15)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step60 :parameters (?s - step ?s2 ?s3 ?s17 ?s47 ?s66 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s2)) (at start (done ?s3)) (at start (done ?s17)) (at start (done ?s47)) (at start (done ?s66)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step61 :parameters (?s - step ?s3 ?s50 ?s51 - step) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done ?s3)) (at start (done ?s50)) (at start (done ?s51)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step62 :parameters (?s - step ?s23 ?s55 ?s65 ?s77 ?s79 - step) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done ?s23)) (at start (done ?s55)) (at start (done ?s65)) (at start (done ?s77)) (at start (done ?s79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step63 :parameters (?s - step ?s70 - step) :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done ?s70)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step64 :parameters (?s - step ?s12 ?s70 ?s77 - step) :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done ?s12)) (at start (done ?s70)) (at start (done ?s77)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step65 :parameters (?s - step ?s11 - step) :duration (= ?duration 5)
    :condition (and (at start (pending ?s)) (at start (done ?s11)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step66 :parameters (?s - step ?s42 ?s58 ?s61 ?s80 - step) :duration (= ?duration 5)
    :condition (and (at start (pending ?s)) (at start (done ?s42)) (at start (done ?s58)) (at start (done ?s61)) (at start (done ?s80)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step67 :parameters (?s - step ?s50 - step) :duration (= ?duration 180)
    :condition (and (at start (pending ?s)) (at start (done ?s50)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step68 :parameters (?s - step ?s9 ?s67 - step) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done ?s9)) (at start (done ?s67)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step69 :parameters (?s - step ?s53 ?s54 - step) :duration (= ?duration 120)
    :condition (and (at start (pending ?s)) (at start (done ?s53)) (at start (done ?s54)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step70 :parameters (?s - step) :duration (= ?duration 1800)
    :condition (at start (pending ?s))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step71 :parameters (?s - step ?s7 ?s12 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s7)) (at start (done ?s12)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step72 :parameters (?s - step ?s6 ?s15 ?s17 ?s28 ?s57 ?s59 ?s67 - step) :duration (= ?duration 15)
    :condition (and (at start (pending ?s)) (at start (done ?s6)) (at start (done ?s15)) (at start (done ?s17)) (at start (done ?s28)) (at start (done ?s57)) (at start (done ?s59)) (at start (done ?s67)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step73 :parameters (?s - step ?s22 ?s35 - step) :duration (= ?duration 10)
    :condition (and (at start (pending ?s)) (at start (done ?s22)) (at start (done ?s35)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step74 :parameters (?s - step ?s70 - step) :duration (= ?duration 900)
    :condition (and (at start (pending ?s)) (at start (done ?s70)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step75 :parameters (?s - step ?s50 - step) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done ?s50)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step76 :parameters (?s - step ?s10 ?s48 ?s58 - step) :duration (= ?duration 5)
    :condition (and (at start (pending ?s)) (at start (done ?s10)) (at start (done ?s48)) (at start (done ?s58)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step77 :parameters (?s - step ?s22 ?s79 - step) :duration (= ?duration 60)
    :condition (and (at start (pending ?s)) (at start (done ?s22)) (at start (done ?s79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step78 :parameters (?s - step ?s5 ?s79 - step) :duration (= ?duration 300)
    :condition (and (at start (pending ?s)) (at start (done ?s5)) (at start (done ?s79)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step79 :parameters (?s - step ?s44 - step) :duration (= ?duration 240)
    :condition (and (at start (pending ?s)) (at start (done ?s44)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))

  (:durative-action step80 :parameters (?s - step ?s7 ?s12 ?s36 ?s56 ?s76 - step) :duration (= ?duration 5)
    :condition (and (at start (pending ?s)) (at start (done ?s7)) (at start (done ?s12)) (at start (done ?s36)) (at start (done ?s56)) (at start (done ?s76)))
    :effect (and (at start (not (pending ?s))) (at end (done ?s))))
)