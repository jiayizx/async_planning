(define (domain move_to_ohio)
  (:requirements :durative-actions)
  (:predicates
    (s1_pending) (s1_done)
    (s2_pending) (s2_done)
    (s3_pending) (s3_done)
    (s4_pending) (s4_done)
    (s5_pending) (s5_done)
    (s6_pending) (s6_done)
    (s7_pending) (s7_done)
    (s8_pending) (s8_done)
    (s9_pending) (s9_done)
    (s10_pending) (s10_done)
    (s11_pending) (s11_done)
    (s12_pending) (s12_done)
    (s13_pending) (s13_done)
    (s14_pending) (s14_done)
    (s15_pending) (s15_done)
    (s16_pending) (s16_done)
    (s17_pending) (s17_done)
    (s18_pending) (s18_done)
    (s19_pending) (s19_done)
    (s20_pending) (s20_done)
    (s21_pending) (s21_done)
    (s22_pending) (s22_done)
    (s23_pending) (s23_done)
    (s24_pending) (s24_done)
    (s25_pending) (s25_done)
    (s26_pending) (s26_done)
    (s27_pending) (s27_done)
    (s28_pending) (s28_done)
    (s29_pending) (s29_done)
    (s30_pending) (s30_done)
    (s31_pending) (s31_done)
    (s32_pending) (s32_done)
    (s33_pending) (s33_done)
    (s34_pending) (s34_done)
    (s35_pending) (s35_done)
    (s36_pending) (s36_done)
    (s37_pending) (s37_done)
    (s38_pending) (s38_done)
    (s39_pending) (s39_done)
    (s40_pending) (s40_done)
  )

  (:durative-action research_neighborhoods
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (s1_pending))
    :effect (and (at start (not (s1_pending))) (at end (s1_done))))

  (:durative-action schedule_walkthrough
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (s2_pending)) (at start (s15_done)) (at start (s16_done)) (at start (s22_done)) (at start (s31_done)))
    :effect (and (at start (not (s2_pending))) (at end (s2_done))))

  (:durative-action request_transcripts
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (s3_pending)) (at start (s34_done)))
    :effect (and (at start (not (s3_pending))) (at end (s3_done))))

  (:durative-action determine_budget
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (s4_pending))
    :effect (and (at start (not (s4_pending))) (at end (s4_done))))

  (:durative-action transfer_insurance
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s5_pending)) (at start (s13_done)))
    :effect (and (at start (not (s5_pending))) (at end (s5_done))))

  (:durative-action hire_movers
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (s6_pending)) (at start (s4_done)) (at start (s10_done)) (at start (s31_done)))
    :effect (and (at start (not (s6_pending))) (at end (s6_done))))

  (:durative-action redirect_mail
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (s7_pending)) (at start (s25_done)) (at start (s39_done)))
    :effect (and (at start (not (s7_pending))) (at end (s7_done))))

  (:durative-action obtain_preapproval
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (s8_pending)) (at start (s2_done)))
    :effect (and (at start (not (s8_pending))) (at end (s8_done))))

  (:durative-action catalog_items
    :parameters ()
    :duration (= ?duration 21600)
    :condition (at start (s9_pending))
    :effect (and (at start (not (s9_pending))) (at end (s9_done))))

  (:durative-action list_house
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (s10_pending)) (at start (s12_done)) (at start (s35_done)))
    :effect (and (at start (not (s10_pending))) (at end (s10_done))))

  (:durative-action pack_kitchen
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (s11_pending)) (at start (s17_done)))
    :effect (and (at start (not (s11_pending))) (at end (s11_done))))

  (:durative-action deep_clean
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (s12_pending)) (at start (s2_done)) (at start (s22_done)) (at start (s38_done)))
    :effect (and (at start (not (s12_pending))) (at end (s12_done))))

  (:durative-action submit_offer
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (s13_pending)) (at start (s1_done)) (at start (s4_done)) (at start (s12_done)) (at start (s28_done)) (at start (s32_done)))
    :effect (and (at start (not (s13_pending))) (at end (s13_done))))

  (:durative-action gather_documents
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (s14_pending))
    :effect (and (at start (not (s14_pending))) (at end (s14_done))))

  (:durative-action save_deposit
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (at start (s15_pending))
    :effect (and (at start (not (s15_pending))) (at end (s15_done))))

  (:durative-action browse_listings
    :parameters ()
    :duration (= ?duration 36000)
    :condition (and (at start (s16_pending)) (at start (s31_done)))
    :effect (and (at start (not (s16_pending))) (at end (s16_done))))

  (:durative-action purchase_boxes
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (s17_pending)) (at start (s21_done)))
    :effect (and (at start (not (s17_pending))) (at end (s17_done))))

  (:durative-action donate_furniture
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (s18_pending)) (at start (s9_done)) (at start (s12_done)))
    :effect (and (at start (not (s18_pending))) (at end (s18_done))))

  (:durative-action register_vote
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (s19_pending)) (at start (s1_done)) (at start (s5_done)) (at start (s38_done)))
    :effect (and (at start (not (s19_pending))) (at end (s19_done))))

  (:durative-action load_truck
    :parameters ()
    :duration (= ?duration 28800)
    :condition (and (at start (s20_pending)) (at start (s11_done)) (at start (s26_done)))
    :effect (and (at start (not (s20_pending))) (at end (s20_done))))

  (:durative-action sort_clothes
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (s21_pending)) (at start (s12_done)))
    :effect (and (at start (not (s21_pending))) (at end (s21_done))))

  (:durative-action interview_managers
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (s22_pending)) (at start (s35_done)))
    :effect (and (at start (not (s22_pending))) (at end (s22_done))))

  (:durative-action notify_resignation
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (s23_pending)) (at start (s31_done)) (at start (s34_done)))
    :effect (and (at start (not (s23_pending))) (at end (s23_done))))

  (:durative-action research_utilities
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (s24_pending))
    :effect (and (at start (not (s24_pending))) (at end (s24_done))))

  (:durative-action sign_papers
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (s25_pending)) (at start (s33_done)))
    :effect (and (at start (not (s25_pending))) (at end (s25_done))))

  (:durative-action wrap_glassware
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (s26_pending)) (at start (s11_done)))
    :effect (and (at start (not (s26_pending))) (at end (s26_done))))

  (:durative-action cancel_memberships
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s27_pending)) (at start (s3_done)) (at start (s15_done)))
    :effect (and (at start (not (s27_pending))) (at end (s27_done))))

  (:durative-action verify_move_in
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s28_pending)) (at start (s25_done)))
    :effect (and (at start (not (s28_pending))) (at end (s28_done))))

  (:durative-action disconnect_internet
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (s29_pending))
    :effect (and (at start (not (s29_pending))) (at end (s29_done))))

  (:durative-action set_aside_suitcase
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (s30_pending)) (at start (s15_done)) (at start (s35_done)))
    :effect (and (at start (not (s30_pending))) (at end (s30_done))))

  (:durative-action decide_move_month
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (s31_pending))
    :effect (and (at start (not (s31_pending))) (at end (s31_done))))

  (:durative-action schedule_utility_connection
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s32_pending)) (at start (s16_done)) (at start (s24_done)) (at start (s29_done)))
    :effect (and (at start (not (s32_pending))) (at end (s32_done))))

  (:durative-action final_walkthrough
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (s33_pending)) (at start (s10_done)))
    :effect (and (at start (not (s33_pending))) (at end (s33_done))))

  (:durative-action apply_job
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (at start (s34_pending))
    :effect (and (at start (not (s34_pending))) (at end (s34_done))))

  (:durative-action review_contract
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (s35_pending)) (at start (s37_done)))
    :effect (and (at start (not (s35_pending))) (at end (s35_done))))

  (:durative-action organize_folder
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s36_pending)) (at start (s14_done)) (at start (s16_done)))
    :effect (and (at start (not (s36_pending))) (at end (s36_done))))

  (:durative-action compare_truck_quotes
    :parameters ()
    :duration (= ?duration 86400)
    :condition (and (at start (s37_pending)) (at start (s4_done)))
    :effect (and (at start (not (s37_pending))) (at end (s37_done))))

  (:durative-action take_photos
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (s38_pending))
    :effect (and (at start (not (s38_pending))) (at end (s38_done))))

  (:durative-action update_license
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (s39_pending)) (at start (s34_done)))
    :effect (and (at start (not (s39_pending))) (at end (s39_done))))

  (:durative-action pick_up_keys
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (s40_pending)) (at start (s39_done)))
    :effect (and (at start (not (s40_pending))) (at end (s40_done))))
)