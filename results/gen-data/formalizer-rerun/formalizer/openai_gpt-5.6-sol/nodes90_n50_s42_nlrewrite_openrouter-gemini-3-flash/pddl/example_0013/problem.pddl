(define (problem springsteen-show-problem)
(:domain springsteen-show)
(:objects
 step1-s1 step2-s2 step3-s3 step4-s4 step5-s5 step6-s6 step7-s7 step8-s8 step9-s9 step10-s10
 step11-s11 step12-s12 step13-s13 step14-s14 step15-s15 step16-s16 step17-s17 step18-s18 step19-s19 step20-s20
 step21-s21 step22-s22 step23-s23 step24-s24 step25-s25 step26-s26 step27-s27 step28-s28 step29-s29 step30-s30
 step31-s31 step32-s32 step33-s33 step34-s34 step35-s35 step36-s36 step37-s37 step38-s38 step39-s39 step40-s40
 step41-s41 step42-s42 step43-s43 step44-s44 step45-s45 step46-s46 step47-s47 step48-s48 step49-s49 step50-s50
 step51-s51 step52-s52 step53-s53 step54-s54 step55-s55 step56-s56 step57-s57 step58-s58 step59-s59 step60-s60
 step61-s61 step62-s62 step63-s63 step64-s64 step65-s65 step66-s66 step67-s67 step68-s68 step69-s69 step70-s70
 step71-s71 step72-s72 step73-s73 step74-s74 step75-s75 step76-s76 step77-s77 step78-s78 step79-s79 step80-s80
 step81-s81 step82-s82 step83-s83 step84-s84 step85-s85 step86-s86 step87-s87 step88-s88 step89-s89 step90-s90)
(:init
 (step_pending step1-s1)(step_pending step2-s2)(step_pending step3-s3)(step_pending step4-s4)(step_pending step5-s5)
 (step_pending step6-s6)(step_pending step7-s7)(step_pending step8-s8)(step_pending step9-s9)(step_pending step10-s10)
 (step_pending step11-s11)(step_pending step12-s12)(step_pending step13-s13)(step_pending step14-s14)(step_pending step15-s15)
 (step_pending step16-s16)(step_pending step17-s17)(step_pending step18-s18)(step_pending step19-s19)(step_pending step20-s20)
 (step_pending step21-s21)(step_pending step22-s22)(step_pending step23-s23)(step_pending step24-s24)(step_pending step25-s25)
 (step_pending step26-s26)(step_pending step27-s27)(step_pending step28-s28)(step_pending step29-s29)(step_pending step30-s30)
 (step_pending step31-s31)(step_pending step32-s32)(step_pending step33-s33)(step_pending step34-s34)(step_pending step35-s35)
 (step_pending step36-s36)(step_pending step37-s37)(step_pending step38-s38)(step_pending step39-s39)(step_pending step40-s40)
 (step_pending step41-s41)(step_pending step42-s42)(step_pending step43-s43)(step_pending step44-s44)(step_pending step45-s45)
 (step_pending step46-s46)(step_pending step47-s47)(step_pending step48-s48)(step_pending step49-s49)(step_pending step50-s50)
 (step_pending step51-s51)(step_pending step52-s52)(step_pending step53-s53)(step_pending step54-s54)(step_pending step55-s55)
 (step_pending step56-s56)(step_pending step57-s57)(step_pending step58-s58)(step_pending step59-s59)(step_pending step60-s60)
 (step_pending step61-s61)(step_pending step62-s62)(step_pending step63-s63)(step_pending step64-s64)(step_pending step65-s65)
 (step_pending step66-s66)(step_pending step67-s67)(step_pending step68-s68)(step_pending step69-s69)(step_pending step70-s70)
 (step_pending step71-s71)(step_pending step72-s72)(step_pending step73-s73)(step_pending step74-s74)(step_pending step75-s75)
 (step_pending step76-s76)(step_pending step77-s77)(step_pending step78-s78)(step_pending step79-s79)(step_pending step80-s80)
 (step_pending step81-s81)(step_pending step82-s82)(step_pending step83-s83)(step_pending step84-s84)(step_pending step85-s85)
 (step_pending step86-s86)(step_pending step87-s87)(step_pending step88-s88)(step_pending step89-s89)(step_pending step90-s90))
(:goal (and
 (step_done step1-s1)(step_done step2-s2)(step_done step3-s3)(step_done step4-s4)(step_done step5-s5)
 (step_done step6-s6)(step_done step7-s7)(step_done step8-s8)(step_done step9-s9)(step_done step10-s10)
 (step_done step11-s11)(step_done step12-s12)(step_done step13-s13)(step_done step14-s14)(step_done step15-s15)
 (step_done step16-s16)(step_done step17-s17)(step_done step18-s18)(step_done step19-s19)(step_done step20-s20)
 (step_done step21-s21)(step_done step22-s22)(step_done step23-s23)(step_done step24-s24)(step_done step25-s25)
 (step_done step26-s26)(step_done step27-s27)(step_done step28-s28)(step_done step29-s29)(step_done step30-s30)
 (step_done step31-s31)(step_done step32-s32)(step_done step33-s33)(step_done step34-s34)(step_done step35-s35)
 (step_done step36-s36)(step_done step37-s37)(step_done step38-s38)(step_done step39-s39)(step_done step40-s40)
 (step_done step41-s41)(step_done step42-s42)(step_done step43-s43)(step_done step44-s44)(step_done step45-s45)
 (step_done step46-s46)(step_done step47-s47)(step_done step48-s48)(step_done step49-s49)(step_done step50-s50)
 (step_done step51-s51)(step_done step52-s52)(step_done step53-s53)(step_done step54-s54)(step_done step55-s55)
 (step_done step56-s56)(step_done step57-s57)(step_done step58-s58)(step_done step59-s59)(step_done step60-s60)
 (step_done step61-s61)(step_done step62-s62)(step_done step63-s63)(step_done step64-s64)(step_done step65-s65)
 (step_done step66-s66)(step_done step67-s67)(step_done step68-s68)(step_done step69-s69)(step_done step70-s70)
 (step_done step71-s71)(step_done step72-s72)(step_done step73-s73)(step_done step74-s74)(step_done step75-s75)
 (step_done step76-s76)(step_done step77-s77)(step_done step78-s78)(step_done step79-s79)(step_done step80-s80)
 (step_done step81-s81)(step_done step82-s82)(step_done step83-s83)(step_done step84-s84)(step_done step85-s85)
 (step_done step86-s86)(step_done step87-s87)(step_done step88-s88)(step_done step89-s89)(step_done step90-s90)
 (d39)))
(:metric minimize (total-time))
)