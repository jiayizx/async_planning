(define (domain size-jeans)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pending1) (pending2) (pending3) (pending4) (pending5)
    (pending6) (pending7) (pending8) (pending9) (pending10)
    (pending11) (pending12) (pending13) (pending14) (pending15)
    (pending16) (pending17) (pending18) (pending19) (pending20)
    (pending21) (pending22) (pending23) (pending24) (pending25)
    (pending26) (pending27) (pending28) (pending29) (pending30)
    (pending31) (pending32) (pending33) (pending34) (pending35)
    (pending36) (pending37) (pending38) (pending39) (pending40)
    (waist_measurement_documented)
    (rise_preference_noted)
    (front_rise_measured)
    (jeans_laid_flat)
    (measuring_tape_located)
    (wrinkles_smoothed)
    (waistband_pulled_taut)
    (measurements_compared)
    (inseam_measured)
    (hip_width_recorded)
    (pant_legs_unrolled)
    (fly_closed)
    (numbers_double_checked)
    (material_identified)
    (leg_opening_preference_determined)
    (waist_average_calculated)
    (back_rise_measured)
    (waistbands_aligned)
    (shrinkage_allowance_checked)
    (seams_reset)
    (thigh_circumference_recorded)
    (leg_opening_measured)
    (waistband_distance_measured)
    (total_length_measured)
    (crotch_intersection_located)
    (size_recommendation_finalized)
    (hips_measured)
    (thigh_width_measured)
    (workspace_cleared)
    (tape_untwisted)
    (vanity_sizing_researched)
    (knee_width_measured)
    (stretch_content_read)
    (cut_style_identified)
    (elastane_accounted)
    (waist_fit_adjusted)
    (leg_seams_inspected)
    (leg_shape_noted)
    (outseam_measured)
    (elasticity_checked)
  )

  (:durative-action document-waist
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending1)) (at start (step_pending ?s)) (at start (waist_average_calculated)))
    :effect (and (at start (not (pending1))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waist_measurement_documented))))

  (:durative-action note-rise-preference
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (pending2)) (at start (step_pending ?s)) (at start (waistbands_aligned)))
    :effect (and (at start (not (pending2))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (rise_preference_noted))))

  (:durative-action measure-front-rise
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending3)) (at start (step_pending ?s)) (at start (fly_closed)) (at start (crotch_intersection_located)))
    :effect (and (at start (not (pending3))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (front_rise_measured))))

  (:durative-action lay-jeans-flat
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (pending4)) (at start (step_pending ?s)) (at start (workspace_cleared)))
    :effect (and (at start (not (pending4))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (jeans_laid_flat))))

  (:durative-action locate-measuring-tape
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending5)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending5))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (measuring_tape_located))))

  (:durative-action smooth-wrinkles
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending6)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending6))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (wrinkles_smoothed))))

  (:durative-action pull-waistband-taut
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (pending7)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending7))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waistband_pulled_taut))))

  (:durative-action compare-size-chart
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (pending8)) (at start (step_pending ?s)) (at start (numbers_double_checked)))
    :effect (and (at start (not (pending8))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (measurements_compared))))

  (:durative-action measure-inseam
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending9)) (at start (step_pending ?s)) (at start (jeans_laid_flat)) (at start (pant_legs_unrolled)) (at start (seams_reset)) (at start (total_length_measured)) (at start (tape_untwisted)) (at start (outseam_measured)))
    :effect (and (at start (not (pending9))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (inseam_measured))))

  (:durative-action record-hip-width
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending10)) (at start (step_pending ?s)) (at start (fly_closed)) (at start (hips_measured)))
    :effect (and (at start (not (pending10))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hip_width_recorded))))

  (:durative-action unroll-pant-legs
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (pending11)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending11))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (pant_legs_unrolled))))

  (:durative-action close-fly
    :parameters (?s - step)
    :duration (= ?duration 20)
    :condition (and (at start (pending12)) (at start (step_pending ?s)) (at start (wrinkles_smoothed)) (at start (elasticity_checked)))
    :effect (and (at start (not (pending12))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (fly_closed))))

  (:durative-action double-check-numbers
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending13)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending13))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (numbers_double_checked))))

  (:durative-action identify-material
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending14)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending14))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (material_identified))))

  (:durative-action determine-leg-opening
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending15)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending15))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leg_opening_preference_determined))))

  (:durative-action calculate-waist-average
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (pending16)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending16))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waist_average_calculated))))

  (:durative-action measure-back-rise
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending17)) (at start (step_pending ?s)) (at start (front_rise_measured)))
    :effect (and (at start (not (pending17))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (back_rise_measured))))

  (:durative-action align-waistbands
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (pending18)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending18))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waistbands_aligned))))

  (:durative-action check-shrinkage
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (pending19)) (at start (step_pending ?s)) (at start (stretch_content_read)))
    :effect (and (at start (not (pending19))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (shrinkage_allowance_checked))))

  (:durative-action reset-seams
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (pending20)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending20))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (seams_reset))))

  (:durative-action record-thigh-circumference
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending21)) (at start (step_pending ?s)) (at start (leg_opening_measured)) (at start (thigh_width_measured)))
    :effect (and (at start (not (pending21))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thigh_circumference_recorded))))

  (:durative-action measure-leg-opening
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (pending22)) (at start (step_pending ?s)) (at start (numbers_double_checked)) (at start (leg_seams_inspected)))
    :effect (and (at start (not (pending22))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leg_opening_measured))))

  (:durative-action measure-waistband-distance
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (pending23)) (at start (step_pending ?s)) (at start (waistband_pulled_taut)) (at start (workspace_cleared)))
    :effect (and (at start (not (pending23))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waistband_distance_measured))))

  (:durative-action measure-total-length
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending24)) (at start (step_pending ?s)) (at start (waistband_pulled_taut)) (at start (waistbands_aligned)))
    :effect (and (at start (not (pending24))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (total_length_measured))))

  (:durative-action locate-crotch-intersection
    :parameters (?s - step)
    :duration (= ?duration 15)
    :condition (and (at start (pending25)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending25))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (crotch_intersection_located))))

  (:durative-action finalize-size-recommendation
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (pending26)) (at start (step_pending ?s)) (at start (knee_width_measured)))
    :effect (and (at start (not (pending26))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (size_recommendation_finalized))))

  (:durative-action measure-hips
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending27)) (at start (step_pending ?s)) (at start (measuring_tape_located)))
    :effect (and (at start (not (pending27))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (hips_measured))))

  (:durative-action measure-thigh-width
    :parameters (?s - step)
    :duration (= ?duration 45)
    :condition (and (at start (pending28)) (at start (step_pending ?s)) (at start (waistband_pulled_taut)))
    :effect (and (at start (not (pending28))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (thigh_width_measured))))

  (:durative-action clear-workspace
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending29)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending29))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (workspace_cleared))))

  (:durative-action untwist-tape
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (pending30)) (at start (step_pending ?s)) (at start (jeans_laid_flat)) (at start (hips_measured)) (at start (workspace_cleared)))
    :effect (and (at start (not (pending30))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (tape_untwisted))))

  (:durative-action research-vanity-sizing
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (pending31)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending31))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (vanity_sizing_researched))))

  (:durative-action measure-knee-width
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending32)) (at start (step_pending ?s)) (at start (inseam_measured)) (at start (thigh_width_measured)) (at start (tape_untwisted)) (at start (cut_style_identified)))
    :effect (and (at start (not (pending32))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (knee_width_measured))))

  (:durative-action read-stretch-content
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending33)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending33))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (stretch_content_read))))

  (:durative-action identify-cut-style
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending34)) (at start (step_pending ?s)))
    :effect (and (at start (not (pending34))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cut_style_identified))))

  (:durative-action account-for-elastane
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (pending35)) (at start (step_pending ?s)) (at start (jeans_laid_flat)) (at start (vanity_sizing_researched)) (at start (waist_fit_adjusted)))
    :effect (and (at start (not (pending35))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (elastane_accounted))))

  (:durative-action adjust-waist-fit
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (pending36)) (at start (step_pending ?s)) (at start (material_identified)))
    :effect (and (at start (not (pending36))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (waist_fit_adjusted))))

  (:durative-action inspect-leg-seams
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending37)) (at start (step_pending ?s)) (at start (wrinkles_smoothed)) (at start (leg_opening_preference_determined)) (at start (total_length_measured)) (at start (stretch_content_read)) (at start (leg_shape_noted)))
    :effect (and (at start (not (pending37))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leg_seams_inspected))))

  (:durative-action note-leg-shape
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (and (at start (pending38)) (at start (step_pending ?s)) (at start (cut_style_identified)))
    :effect (and (at start (not (pending38))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (leg_shape_noted))))

  (:durative-action measure-outseam
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (pending39)) (at start (step_pending ?s)) (at start (waistbands_aligned)) (at start (seams_reset)))
    :effect (and (at start (not (pending39))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (outseam_measured))))

  (:durative-action check-elasticity
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (pending40)) (at start (step_pending ?s)) (at start (measuring_tape_located)) (at start (leg_opening_preference_determined)))
    :effect (and (at start (not (pending40))) (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (elasticity_checked))))
)