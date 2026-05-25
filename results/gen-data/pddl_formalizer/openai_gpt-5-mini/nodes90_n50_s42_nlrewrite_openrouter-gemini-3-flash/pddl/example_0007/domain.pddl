(define (domain jordans_auth_check)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending1) (done1) (p1)
    (pending2) (done2) (p2)
    (pending3) (done3) (p3)
    (pending4) (done4) (p4)
    (pending5) (done5) (p5)
    (pending6) (done6) (p6)
    (pending7) (done7) (p7)
    (pending8) (done8) (p8)
    (pending9) (done9) (p9)
    (pending10) (done10) (p10)
    (pending11) (done11) (p11)
    (pending12) (done12) (p12)
    (pending13) (done13) (p13)
    (pending14) (done14) (p14)
    (pending15) (done15) (p15)
    (pending16) (done16) (p16)
    (pending17) (done17) (p17)
    (pending18) (done18) (p18)
    (pending19) (done19) (p19)
    (pending20) (done20) (p20)
    (pending21) (done21) (p21)
    (pending22) (done22) (p22)
    (pending23) (done23) (p23)
    (pending24) (done24) (p24)
    (pending25) (done25) (p25)
    (pending26) (done26) (p26)
    (pending27) (done27) (p27)
    (pending28) (done28) (p28)
    (pending29) (done29) (p29)
    (pending30) (done30) (p30)
    (pending31) (done31) (p31)
    (pending32) (done32) (p32)
    (pending33) (done33) (p33)
    (pending34) (done34) (p34)
    (pending35) (done35) (p35)
    (pending36) (done36) (p36)
    (pending37) (done37) (p37)
    (pending38) (done38) (p38)
    (pending39) (done39) (p39)
    (pending40) (done40) (p40)
    (pending41) (done41) (p41)
    (pending42) (done42) (p42)
    (pending43) (done43) (p43)
    (pending44) (done44) (p44)
    (pending45) (done45) (p45)
    (pending46) (done46) (p46)
    (pending47) (done47) (p47)
    (pending48) (done48) (p48)
    (pending49) (done49) (p49)
    (pending50) (done50) (p50)
    (pending51) (done51) (p51)
    (pending52) (done52) (p52)
    (pending53) (done53) (p53)
    (pending54) (done54) (p54)
    (pending55) (done55) (p55)
    (pending56) (done56) (p56)
    (pending57) (done57) (p57)
    (pending58) (done58) (p58)
    (pending59) (done59) (p59)
    (pending60) (done60) (p60)
    (pending61) (done61) (p61)
    (pending62) (done62) (p62)
    (pending63) (done63) (p63)
    (pending64) (done64) (p64)
    (pending65) (done65) (p65)
    (pending66) (done66) (p66)
    (pending67) (done67) (p67)
    (pending68) (done68) (p68)
    (pending69) (done69) (p69)
    (pending70) (done70) (p70)
    (pending71) (done71) (p71)
    (pending72) (done72) (p72)
    (pending73) (done73) (p73)
    (pending74) (done74) (p74)
    (pending75) (done75) (p75)
    (pending76) (done76) (p76)
    (pending77) (done77) (p77)
    (pending78) (done78) (p78)
    (pending79) (done79) (p79)
    (pending80) (done80) (p80)
    (pending81) (done81) (p81)
    (pending82) (done82) (p82)
    (pending83) (done83) (p83)
    (pending84) (done84) (p84)
    (pending85) (done85) (p85)
    (pending86) (done86) (p86)
    (pending87) (done87) (p87)
    (pending88) (done88) (p88)
    (pending89) (done89) (p89)
    (pending90) (done90) (p90)
  )

  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (and (at start (pending1)) (at start (p24)))
    :effect (and (at start (not (pending1))) (at end (done1)) (at end (p1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 120)
    :condition (and (at start (pending2)) (at start (p36)) (at start (p82)))
    :effect (and (at start (not (pending2))) (at end (done2)) (at end (p2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (and (at start (pending3)) (at start (p1)) (at start (p7)) (at start (p34)))
    :effect (and (at start (not (pending3))) (at end (done3)) (at end (p3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 900)
    :condition (and (at start (pending4)) (at start (p5)) (at start (p51)))
    :effect (and (at start (not (pending4))) (at end (done4)) (at end (p4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 1800)
    :condition (and (at start (pending5)) (at start (p85)))
    :effect (and (at start (not (pending5))) (at end (done5)) (at end (p5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (at start (pending6))
    :effect (and (at start (not (pending6))) (at end (done6)) (at end (p6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 180)
    :condition (and (at start (pending7)) (at start (p87)))
    :effect (and (at start (not (pending7))) (at end (done7)) (at end (p7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 60)
    :condition (and (at start (pending8)) (at start (p33)) (at start (p85)) (at start (p78)))
    :effect (and (at start (not (pending8))) (at end (done8)) (at end (p8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 120)
    :condition (and (at start (pending9)) (at start (p34)) (at start (p71)) (at start (p81)))
    :effect (and (at start (not (pending9))) (at end (done9)) (at end (p9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 300)
    :condition (and (at start (pending10)) (at start (p23)) (at start (p44)) (at start (p71)))
    :effect (and (at start (not (pending10))) (at end (done10)) (at end (p10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 1200)
    :condition (and (at start (pending11)) (at start (p73)))
    :effect (and (at start (not (pending11))) (at end (done11)) (at end (p11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 900)
    :condition (and (at start (pending12)) (at start (p17)) (at start (p24)) (at start (p32)) (at start (p46)) (at start (p70)) (at start (p84)))
    :effect (and (at start (not (pending12))) (at end (done12)) (at end (p12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 30)
    :condition (and (at start (pending13)) (at start (p23)) (at start (p50)) (at start (p51)) (at start (p75)) (at start (p90)))
    :effect (and (at start (not (pending13))) (at end (done13)) (at end (p13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 600)
    :condition (and (at start (pending14)) (at start (p11)) (at start (p17)) (at start (p67)) (at start (p84)))
    :effect (and (at start (not (pending14))) (at end (done14)) (at end (p14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 120)
    :condition (and (at start (pending15)) (at start (p16)) (at start (p52)) (at start (p61)))
    :effect (and (at start (not (pending15))) (at end (done15)) (at end (p15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 120)
    :condition (and (at start (pending16)) (at start (p50)) (at start (p73)))
    :effect (and (at start (not (pending16))) (at end (done16)) (at end (p16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 600)
    :condition (and (at start (pending17)) (at start (p82)))
    :effect (and (at start (not (pending17))) (at end (done17)) (at end (p17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 300)
    :condition (and (at start (pending18)) (at start (p62)))
    :effect (and (at start (not (pending18))) (at end (done18)) (at end (p18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 600)
    :condition (and (at start (pending19)) (at start (p17)) (at start (p27)) (at start (p71)) (at start (p87)))
    :effect (and (at start (not (pending19))) (at end (done19)) (at end (p19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 180)
    :condition (and (at start (pending20)) (at start (p34)) (at start (p74)) (at start (p29)))
    :effect (and (at start (not (pending20))) (at end (done20)) (at end (p20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 600)
    :condition (and (at start (pending21)) (at start (p5)) (at start (p6)) (at start (p13)) (at start (p25)) (at start (p38)) (at start (p64)) (at start (p81)) (at start (p89)))
    :effect (and (at start (not (pending21))) (at end (done21)) (at end (p21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 240)
    :condition (and (at start (pending22)) (at start (p58)) (at start (p72)) (at start (p84)))
    :effect (and (at start (not (pending22))) (at end (done22)) (at end (p22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 900)
    :condition (at start (pending23))
    :effect (and (at start (not (pending23))) (at end (done23)) (at end (p23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 300)
    :condition (at start (pending24))
    :effect (and (at start (not (pending24))) (at end (done24)) (at end (p24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 2700)
    :condition (and (at start (pending25)) (at start (p58)))
    :effect (and (at start (not (pending25))) (at end (done25)) (at end (p25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 180)
    :condition (and (at start (pending26)) (at start (p36)) (at start (p80)) (at start (p81)) (at start (p88)) (at start (p85)))
    :effect (and (at start (not (pending26))) (at end (done26)) (at end (p26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 720)
    :condition (and (at start (pending27)) (at start (p17)) (at start (p25)) (at start (p50)))
    :effect (and (at start (not (pending27))) (at end (done27)) (at end (p27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 60)
    :condition (and (at start (pending28)) (at start (p5)) (at start (p80)))
    :effect (and (at start (not (pending28))) (at end (done28)) (at end (p28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 3600)
    :condition (at start (pending29))
    :effect (and (at start (not (pending29))) (at end (done29)) (at end (p29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (and (at start (pending30)) (at start (p28)) (at start (p35)) (at start (p42)) (at start (p75)))
    :effect (and (at start (not (pending30))) (at end (done30)) (at end (p30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 300)
    :condition (and (at start (pending31)) (at start (p44)))
    :effect (and (at start (not (pending31))) (at end (done31)) (at end (p31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 120)
    :condition (and (at start (pending32)) (at start (p24)))
    :effect (and (at start (not (pending32))) (at end (done32)) (at end (p32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 5)
    :condition (and (at start (pending33)) (at start (p19)) (at start (p29)) (at start (p73)) (at start (p74)) (at start (p86)) (at start (p90)))
    :effect (and (at start (not (pending33))) (at end (done33)) (at end (p33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 600)
    :condition (and (at start (pending34)) (at start (p11)) (at start (p29)))
    :effect (and (at start (not (pending34))) (at end (done34)) (at end (p34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 300)
    :condition (and (at start (pending35)) (at start (p14)) (at start (p27)) (at start (p83)))
    :effect (and (at start (not (pending35))) (at end (done35)) (at end (p35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 86400)
    :condition (and (at start (pending36)) (at start (p6)) (at start (p66)))
    :effect (and (at start (not (pending36))) (at end (done36)) (at end (p36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 60)
    :condition (at start (pending37))
    :effect (and (at start (not (pending37))) (at end (done37)) (at end (p37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 120)
    :condition (and (at start (pending38)) (at start (p20)) (at start (p27)) (at start (p74)) (at start (p81)))
    :effect (and (at start (not (pending38))) (at end (done38)) (at end (p38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 480)
    :condition (and (at start (pending39)) (at start (p10)) (at start (p44)) (at start (p58)) (at start (p64)) (at start (p48)))
    :effect (and (at start (not (pending39))) (at end (done39)) (at end (p39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 60)
    :condition (and (at start (pending40)) (at start (p58)) (at start (p72)))
    :effect (and (at start (not (pending40))) (at end (done40)) (at end (p40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 360)
    :condition (and (at start (pending41)) (at start (p14)) (at start (p27)) (at start (p64)) (at start (p86)))
    :effect (and (at start (not (pending41))) (at end (done41)) (at end (p41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 240)
    :condition (at start (pending42))
    :effect (and (at start (not (pending42))) (at end (done42)) (at end (p42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 120)
    :condition (at start (pending43))
    :effect (and (at start (not (pending43))) (at end (done43)) (at end (p43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 900)
    :condition (and (at start (pending44)) (at start (p50)))
    :effect (and (at start (not (pending44))) (at end (done44)) (at end (p44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 240)
    :condition (and (at start (pending45)) (at start (p23)) (at start (p67)))
    :effect (and (at start (not (pending45))) (at end (done45)) (at end (p45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 420)
    :condition (and (at start (pending46)) (at start (p51)) (at start (p74)))
    :effect (and (at start (not (pending46))) (at end (done46)) (at end (p46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 180)
    :condition (and (at start (pending47)) (at start (p65)) (at start (p74)))
    :effect (and (at start (not (pending47))) (at end (done47)) (at end (p47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 300)
    :condition (and (at start (pending48)) (at start (p1)) (at start (p16)) (at start (p19)) (at start (p51)) (at start (p62)))
    :effect (and (at start (not (pending48))) (at end (done48)) (at end (p48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 300)
    :condition (and (at start (pending49)) (at start (p65)) (at start (p82)) (at start (p85)) (at start (p88)))
    :effect (and (at start (not (pending49))) (at end (done49)) (at end (p49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 7200)
    :condition (and (at start (pending50)) (at start (p6)))
    :effect (and (at start (not (pending50))) (at end (done50)) (at end (p50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 180)
    :condition (and (at start (pending51)) (at start (p31)))
    :effect (and (at start (not (pending51))) (at end (done51)) (at end (p51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 240)
    :condition (and (at start (pending52)) (at start (p53)) (at start (p57)) (at start (p73)))
    :effect (and (at start (not (pending52))) (at end (done52)) (at end (p52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 120)
    :condition (and (at start (pending53)) (at start (p23)))
    :effect (and (at start (not (pending53))) (at end (done53)) (at end (p53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 300)
    :condition (and (at start (pending54)) (at start (p81)) (at start (p88)))
    :effect (and (at start (not (pending54))) (at end (done54)) (at end (p54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 300)
    :condition (and (at start (pending55)) (at start (p2)) (at start (p8)) (at start (p72)) (at start (p85)) (at start (p87)))
    :effect (and (at start (not (pending55))) (at end (done55)) (at end (p55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 120)
    :condition (and (at start (pending56)) (at start (p71)) (at start (p88)))
    :effect (and (at start (not (pending56))) (at end (done56)) (at end (p56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 180)
    :condition (and (at start (pending57)) (at start (p55)))
    :effect (and (at start (not (pending57))) (at end (done57)) (at end (p57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 1800)
    :condition (at start (pending58))
    :effect (and (at start (not (pending58))) (at end (done58)) (at end (p58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 120)
    :condition (and (at start (pending59)) (at start (p50)))
    :effect (and (at start (not (pending59))) (at end (done59)) (at end (p59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 120)
    :condition (and (at start (pending60)) (at start (p5)) (at start (p37)) (at start (p48)))
    :effect (and (at start (not (pending60))) (at end (done60)) (at end (p60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 300)
    :condition (and (at start (pending61)) (at start (p44)) (at start (p62)))
    :effect (and (at start (not (pending61))) (at end (done61)) (at end (p61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 600)
    :condition (at start (pending62))
    :effect (and (at start (not (pending62))) (at end (done62)) (at end (p62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 600)
    :condition (and (at start (pending63)) (at start (p77)))
    :effect (and (at start (not (pending63))) (at end (done63)) (at end (p63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 480)
    :condition (and (at start (pending64)) (at start (p22)) (at start (p44)) (at start (p50)) (at start (p54)) (at start (p58)) (at start (p62)) (at start (p83)) (at start (p87)))
    :effect (and (at start (not (pending64))) (at end (done64)) (at end (p64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 300)
    :condition (and (at start (pending65)) (at start (p36)) (at start (p90)))
    :effect (and (at start (not (pending65))) (at end (done65)) (at end (p65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 600)
    :condition (and (at start (pending66)) (at start (p85)))
    :effect (and (at start (not (pending66))) (at end (done66)) (at end (p66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 300)
    :condition (and (at start (pending67)) (at start (p25)) (at start (p51)))
    :effect (and (at start (not (pending67))) (at end (done67)) (at end (p67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 120)
    :condition (and (at start (pending68)) (at start (p37)) (at start (p43)))
    :effect (and (at start (not (pending68))) (at end (done68)) (at end (p68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 180)
    :condition (and (at start (pending69)) (at start (p11)) (at start (p53)) (at start (p52)))
    :effect (and (at start (not (pending69))) (at end (done69)) (at end (p69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 600)
    :condition (and (at start (pending70)) (at start (p5)) (at start (p19)) (at start (p39)))
    :effect (and (at start (not (pending70))) (at end (done70)) (at end (p70)))
  )

  (:durative-action do_step71
    :duration (= ?duration 300)
    :condition (and (at start (pending71)) (at start (p62)) (at start (p74)))
    :effect (and (at start (not (pending71))) (at end (done71)) (at end (p71)))
  )

  (:durative-action do_step72
    :duration (= ?duration 120)
    :condition (and (at start (pending72)) (at start (p18)) (at start (p24)))
    :effect (and (at start (not (pending72))) (at end (done72)) (at end (p72)))
  )

  (:durative-action do_step73
    :duration (= ?duration 7200)
    :condition (and (at start (pending73)) (at start (p66)))
    :effect (and (at start (not (pending73))) (at end (done73)) (at end (p73)))
  )

  (:durative-action do_step74
    :duration (= ?duration 60)
    :condition (and (at start (pending74)) (at start (p32)))
    :effect (and (at start (not (pending74))) (at end (done74)) (at end (p74)))
  )

  (:durative-action do_step75
    :duration (= ?duration 180)
    :condition (and (at start (pending75)) (at start (p20)) (at start (p27)) (at start (p64)))
    :effect (and (at start (not (pending75))) (at end (done75)) (at end (p75)))
  )

  (:durative-action do_step76
    :duration (= ?duration 120)
    :condition (and (at start (pending76)) (at start (p43)) (at start (p69)))
    :effect (and (at start (not (pending76))) (at end (done76)) (at end (p76)))
  )

  (:durative-action do_step77
    :duration (= ?duration 300)
    :condition (at start (pending77))
    :effect (and (at start (not (pending77))) (at end (done77)) (at end (p77)))
  )

  (:durative-action do_step78
    :duration (= ?duration 240)
    :condition (and (at start (pending78)) (at start (p4)) (at start (p14)) (at start (p18)) (at start (p71)) (at start (p90)))
    :effect (and (at start (not (pending78))) (at end (done78)) (at end (p78)))
  )

  (:durative-action do_step79
    :duration (= ?duration 60)
    :condition (and (at start (pending79)) (at start (p71)))
    :effect (and (at start (not (pending79))) (at end (done79)) (at end (p79)))
  )

  (:durative-action do_step80
    :duration (= ?duration 180)
    :condition (and (at start (pending80)) (at start (p7)) (at start (p84)))
    :effect (and (at start (not (pending80))) (at end (done80)) (at end (p80)))
  )

  (:durative-action do_step81
    :duration (= ?duration 300)
    :condition (and (at start (pending81)) (at start (p4)) (at start (p23)) (at start (p72)))
    :effect (and (at start (not (pending81))) (at end (done81)) (at end (p81)))
  )

  (:durative-action do_step82
    :duration (= ?duration 300)
    :condition (and (at start (pending82)) (at start (p25)) (at start (p32)))
    :effect (and (at start (not (pending82))) (at end (done82)) (at end (p82)))
  )

  (:durative-action do_step83
    :duration (= ?duration 300)
    :condition (and (at start (pending83)) (at start (p19)) (at start (p61)))
    :effect (and (at start (not (pending83))) (at end (done83)) (at end (p83)))
  )

  (:durative-action do_step84
    :duration (= ?duration 240)
    :condition (and (at start (pending84)) (at start (p1)) (at start (p17)) (at start (p24)) (at start (p46)) (at start (p74)))
    :effect (and (at start (not (pending84))) (at end (done84)) (at end (p84)))
  )

  (:durative-action do_step85
    :duration (= ?duration 900)
    :condition (at start (pending85))
    :effect (and (at start (not (pending85))) (at end (done85)) (at end (p85)))
  )

  (:durative-action do_step86
    :duration (= ?duration 120)
    :condition (and (at start (pending86)) (at start (p18)) (at start (p46)))
    :effect (and (at start (not (pending86))) (at end (done86)) (at end (p86)))
  )

  (:durative-action do_step87
    :duration (= ?duration 3600)
    :condition (at start (pending87))
    :effect (and (at start (not (pending87))) (at end (done87)) (at end (p87)))
  )

  (:durative-action do_step88
    :duration (= ?duration 120)
    :condition (and (at start (pending88)) (at start (p62)))
    :effect (and (at start (not (pending88))) (at end (done88)) (at end (p88)))
  )

  (:durative-action do_step89
    :duration (= ?duration 600)
    :condition (and (at start (pending89)) (at start (p3)) (at start (p11)) (at start (p29)) (at start (p66)) (at start (p87)))
    :effect (and (at start (not (pending89))) (at end (done89)) (at end (p89)))
  )

  (:durative-action do_step90
    :duration (= ?duration 10800)
    :condition (and (at start (pending90)) (at start (p36)) (at start (p44)) (at start (p61)))
    :effect (and (at start (not (pending90))) (at end (done90)) (at end (p90)))
  )
)
