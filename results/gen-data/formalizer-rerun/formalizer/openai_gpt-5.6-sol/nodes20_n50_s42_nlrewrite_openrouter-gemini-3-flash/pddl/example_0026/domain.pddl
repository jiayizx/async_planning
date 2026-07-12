(define (domain boxer-care)
  (:requirements :typing :durative-actions)
  (:types
    step - object
    step1-type step2-type step3-type step4-type step5-type
    step6-type step7-type step8-type step9-type step10-type
    step11-type step12-type step13-type step14-type step15-type
    step16-type step17-type step18-type step19-type step20-type - step)

  (:predicates
    (step-pending ?s - step)
    (step-done ?s - step)
    (s1-complete) (s2-complete) (s3-complete) (s4-complete)
    (s5-complete) (s6-complete) (s7-complete) (s8-complete)
    (s9-complete) (s10-complete) (s11-complete) (s12-complete)
    (s13-complete) (s14-complete) (s15-complete) (s16-complete)
    (s17-complete) (s18-complete) (s19-complete) (s20-complete))

  (:durative-action fill-water-bowls
    :parameters (?s - step1-type)
    :duration (= ?duration 120)
    :condition (and (at start (step-pending ?s))
                    (at start (s6-complete))
                    (at start (s11-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s1-complete))))

  (:durative-action research-dietary-requirements
    :parameters (?s - step2-type)
    :duration (= ?duration 3600)
    :condition (and (at start (step-pending ?s))
                    (at start (s16-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s2-complete))))

  (:durative-action drive-to-dog-park
    :parameters (?s - step3-type)
    :duration (= ?duration 1200)
    :condition (and (at start (step-pending ?s))
                    (at start (s18-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s3-complete))))

  (:durative-action schedule-veterinary-exam
    :parameters (?s - step4-type)
    :duration (= ?duration 600)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s4-complete))))

  (:durative-action prepare-raw-food-meal
    :parameters (?s - step5-type)
    :duration (= ?duration 1800)
    :condition (and (at start (step-pending ?s))
                    (at start (s2-complete))
                    (at start (s16-complete))
                    (at start (s19-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s5-complete))))

  (:durative-action purchase-ceramic-bowls
    :parameters (?s - step6-type)
    :duration (= ?duration 2700)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s6-complete))))

  (:durative-action clean-feeding-area
    :parameters (?s - step7-type)
    :duration (= ?duration 900)
    :condition (and (at start (step-pending ?s))
                    (at start (s10-complete))
                    (at start (s14-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s7-complete))))

  (:durative-action receive-medical-clearance
    :parameters (?s - step8-type)
    :duration (= ?duration 172800)
    :condition (and (at start (step-pending ?s))
                    (at start (s12-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s8-complete))))

  (:durative-action play-fetch
    :parameters (?s - step9-type)
    :duration (= ?duration 2700)
    :condition (and (at start (step-pending ?s))
                    (at start (s3-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s9-complete))))

  (:durative-action purchase-kibble-supplements
    :parameters (?s - step10-type)
    :duration (= ?duration 3600)
    :condition (and (at start (step-pending ?s))
                    (at start (s2-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s10-complete))))

  (:durative-action sanitize-water-unit
    :parameters (?s - step11-type)
    :duration (= ?duration 900)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s11-complete))))

  (:durative-action attend-veterinary-appointment
    :parameters (?s - step12-type)
    :duration (= ?duration 3600)
    :condition (and (at start (step-pending ?s))
                    (at start (s4-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s12-complete))))

  (:durative-action apply-flea-tick-preventative
    :parameters (?s - step13-type)
    :duration (= ?duration 300)
    :condition (and (at start (step-pending ?s))
                    (at start (s20-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s13-complete))))

  (:durative-action set-up-feeding-station
    :parameters (?s - step14-type)
    :duration (= ?duration 1800)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s14-complete))))

  (:durative-action brush-short-coat
    :parameters (?s - step15-type)
    :duration (= ?duration 900)
    :condition (and (at start (step-pending ?s))
                    (at start (s13-complete))
                    (at start (s20-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s15-complete))))

  (:durative-action measure-current-weight
    :parameters (?s - step16-type)
    :duration (= ?duration 300)
    :condition (and (at start (step-pending ?s))
                    (at start (s6-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s16-complete))))

  (:durative-action monitor-while-eating
    :parameters (?s - step17-type)
    :duration (= ?duration 1200)
    :condition (and (at start (step-pending ?s))
                    (at start (s5-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s17-complete))))

  (:durative-action pack-leashes-and-water
    :parameters (?s - step18-type)
    :duration (= ?duration 600)
    :condition (and (at start (step-pending ?s))
                    (at start (s8-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s18-complete))))

  (:durative-action consult-canine-nutritionist
    :parameters (?s - step19-type)
    :duration (= ?duration 7200)
    :condition (and (at start (step-pending ?s))
                    (at start (s2-complete)))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s19-complete))))

  (:durative-action order-grooming-medical-kit
    :parameters (?s - step20-type)
    :duration (= ?duration 1800)
    :condition (at start (step-pending ?s))
    :effect (and (at start (not (step-pending ?s)))
                 (at end (step-done ?s))
                 (at end (s20-complete))))
)