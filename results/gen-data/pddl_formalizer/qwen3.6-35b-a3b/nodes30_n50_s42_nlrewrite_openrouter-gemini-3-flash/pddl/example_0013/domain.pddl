(define (domain paint_furniture)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step) (step_done ?s - step) (task_complete))
  
  (:durative-action step1 (:parameters (?s - step))
    :duration 2700
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s1_done))))
  
  (:durative-action step2 (:parameters (?s - step))
    :duration 3600
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s2_done))))
  
  (:durative-action step3 (:parameters (?s - step))
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s3_done))))
  
  (:durative-action step4 (:parameters (?s - step))
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (s23_done)) (at start (s29_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s4_done))))
  
  (:durative-action step5 (:parameters (?s - step))
    :duration 7200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s5_done))))
  
  (:durative-action step6 (:parameters (?s - step))
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (s17_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s6_done))))
  
  (:durative-action step7 (:parameters (?s - step))
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s12_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s7_done))))
  
  (:durative-action step8 (:parameters (?s - step))
    :duration 300
    :condition (and (at start (step_pending ?s)) (at start (s27_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s8_done))))
  
  (:durative-action step9 (:parameters (?s - step))
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s9_done))))
  
  (:durative-action step10 (:parameters (?s - step))
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s10_done))))
  
  (:durative-action step11 (:parameters (?s - step))
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (s3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s11_done))))
  
  (:durative-action step12 (:parameters (?s - step))
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (s24_done)) (at start (s11_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s12_done))))
  
  (:durative-action step13 (:parameters (?s - step))
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (s29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s13_done))))
  
  (:durative-action step14 (:parameters (?s - step))
    :duration 10800
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s19_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s14_done))))
  
  (:durative-action step15 (:parameters (?s - step))
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (s1_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s15_done))))
  
  (:durative-action step16 (:parameters (?s - step))
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (s28_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s16_done))))
  
  (:durative-action step17 (:parameters (?s - step))
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (s5_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s17_done))))
  
  (:durative-action step18 (:parameters (?s - step))
    :duration 1800
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s18_done))))
  
  (:durative-action step19 (:parameters (?s - step))
    :duration 1800
    :condition (and (at start (step_pending ?s)) (at start (s26_done)) (at start (s30_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s19_done))))
  
  (:durative-action step20 (:parameters (?s - step))
    :duration 7200
    :condition (and (at start (step_pending ?s)) (at start (s5_done)) (at start (s10_done)) (at start (s23_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s20_done))))
  
  (:durative-action step21 (:parameters (?s - step))
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s13_done)) (at start (s29_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s21_done))))
  
  (:durative-action step22 (:parameters (?s - step))
    :duration 172800
    :condition (and (at start (step_pending ?s)) (at start (s23_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s22_done)) (at end (task_complete))))
  
  (:durative-action step23 (:parameters (?s - step))
    :duration 2700
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s23_done))))
  
  (:durative-action step24 (:parameters (?s - step))
    :duration 2700
    :condition (and (at start (step_pending ?s)) (at start (s2_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s24_done))))
  
  (:durative-action step25 (:parameters (?s - step))
    :duration 1200
    :condition (and (at start (step_pending ?s)) (at start (s24_done)) (at start (s3_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s25_done))))
  
  (:durative-action step26 (:parameters (?s - step))
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (s6_done)) (at start (s8_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s26_done))))
  
  (:durative-action step27 (:parameters (?s - step))
    :duration 14400
    :condition (and (at start (step_pending ?s)) (at start (s18_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s27_done))))
  
  (:durative-action step28 (:parameters (?s - step))
    :duration 1200
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s28_done))))
  
  (:durative-action step29 (:parameters (?s - step))
    :duration 3600
    :condition (and (at start (step_pending ?s)) (at start (s7_done)) (at start (s26_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s29_done))))
  
  (:durative-action step30 (:parameters (?s - step))
    :duration 900
    :condition (and (at start (step_pending ?s)) (at start (s1_done)) (at start (s15_done)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (s30_done))))
)