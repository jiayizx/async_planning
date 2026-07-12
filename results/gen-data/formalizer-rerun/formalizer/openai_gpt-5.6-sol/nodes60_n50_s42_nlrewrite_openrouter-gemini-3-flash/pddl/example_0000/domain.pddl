(define (domain business-expansion)
  (:requirements :durative-actions :typing)
  (:types step t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 t26 t27 t28 t29 t30 t31 t32 t33 t34 t35 t36 t37 t38 t39 t40 t41 t42 t43 t44 t45 t46 t47 t48 t49 t50 t51 t52 t53 t54 t55 t56 t57 t58 t59 t60 - step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (d1) (d2) (d3) (d4) (d5) (d6) (d7) (d8) (d9) (d10)
    (d11) (d12) (d13) (d14) (d15) (d16) (d17) (d18) (d19) (d20)
    (d21) (d22) (d23) (d24) (d25) (d26) (d27) (d28) (d29) (d30)
    (d31) (d32) (d33) (d34) (d35) (d36) (d37) (d38) (d39) (d40)
    (d41) (d42) (d43) (d44) (d45) (d46) (d47) (d48) (d49) (d50)
    (d51) (d52) (d53) (d54) (d55) (d56) (d57) (d58) (d59) (d60)
  )

  (:durative-action review-market-analysis
    :parameters (?s - t1)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (d37)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d1))))

  (:durative-action finalize-regional-budget
    :parameters (?s - t2)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d39)) (at start (d50)) (at start (d52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d2))))

  (:durative-action archive-research-notes
    :parameters (?s - t3)
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending ?s)) (at start (d1)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d3))))

  (:durative-action interview-local-consultants
    :parameters (?s - t4)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (d12)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d4))))

  (:durative-action launch-expansion-pilot
    :parameters (?s - t5)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (d51)) (at start (d57)) (at start (d58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d5))))

  (:durative-action sign-distributor-contracts
    :parameters (?s - t6)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d22)) (at start (d23)) (at start (d44)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d6))))

  (:durative-action research-tax-incentives
    :parameters (?s - t7)
    :duration (= ?duration 432000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d7))))

  (:durative-action draft-logistics-plan
    :parameters (?s - t8)
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d41)) (at start (d46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d8))))

  (:durative-action audit-competitor-pricing
    :parameters (?s - t9)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d59)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d9))))

  (:durative-action secure-secondary-funding
    :parameters (?s - t10)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d50)) (at start (d51)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d10))))

  (:durative-action evaluate-office-locations
    :parameters (?s - t11)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d11))))

  (:durative-action draft-feasibility-study
    :parameters (?s - t12)
    :duration (= ?duration 1814400)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d12))))

  (:durative-action form-project-team
    :parameters (?s - t13)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d53)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d13))))

  (:durative-action approve-marketing-materials
    :parameters (?s - t14)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (d54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d14))))

  (:durative-action review-supply-chain-risks
    :parameters (?s - t15)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (d23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d15))))

  (:durative-action lease-office-space
    :parameters (?s - t16)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (d12)) (at start (d19)) (at start (d24)) (at start (d54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d16))))

  (:durative-action design-training-manual
    :parameters (?s - t17)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d17))))

  (:durative-action certify-trainers
    :parameters (?s - t18)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (d17)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d18))))

  (:durative-action obtain-business-licenses
    :parameters (?s - t19)
    :duration (= ?duration 1209600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d19))))

  (:durative-action execute-recruitment-drive
    :parameters (?s - t20)
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending ?s)) (at start (d22)) (at start (d39)) (at start (d45)) (at start (d48)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d20))))

  (:durative-action install-it-infrastructure
    :parameters (?s - t21)
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending ?s)) (at start (d40)) (at start (d41)) (at start (d47)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d21))))

  (:durative-action establish-corporate-entity
    :parameters (?s - t22)
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending ?s)) (at start (d43)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d22))))

  (:durative-action negotiate-vendor-terms
    :parameters (?s - t23)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d22)) (at start (d58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d23))))

  (:durative-action set-up-bank-accounts
    :parameters (?s - t24)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d22)) (at start (d45)) (at start (d50)) (at start (d58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d24))))

  (:durative-action onboard-management-team
    :parameters (?s - t25)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (d20)) (at start (d38)) (at start (d56)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d25))))

  (:durative-action design-brand-identity
    :parameters (?s - t26)
    :duration (= ?duration 1036800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d26))))

  (:durative-action launch-regional-website
    :parameters (?s - t27)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (d23)) (at start (d26)) (at start (d55)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d27))))

  (:durative-action purchase-initial-inventory
    :parameters (?s - t28)
    :duration (= ?duration 864000)
    :condition (and (at start (step_pending ?s)) (at start (d58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d28))))

  (:durative-action select-advertising-agency
    :parameters (?s - t29)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (d23)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d29))))

  (:durative-action conduct-staff-orientation
    :parameters (?s - t30)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d40)) (at start (d54)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d30))))

  (:durative-action publish-press-release
    :parameters (?s - t31)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (d4)) (at start (d52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d31))))

  (:durative-action host-grand-opening
    :parameters (?s - t32)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)) (at start (d28)) (at start (d30)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d32))))

  (:durative-action set-up-payroll-system
    :parameters (?s - t33)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d25)) (at start (d38)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d33))))

  (:durative-action perform-swot-analysis
    :parameters (?s - t34)
    :duration (= ?duration 172800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d34))))

  (:durative-action file-compliance-reports
    :parameters (?s - t35)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (d52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d35))))

  (:durative-action finalize-safety-protocols
    :parameters (?s - t36)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (d18)) (at start (d40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d36))))

  (:durative-action present-business-case
    :parameters (?s - t37)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (d12)) (at start (d29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d37))))

  (:durative-action inspect-office-properties
    :parameters (?s - t38)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (d11)) (at start (d15)) (at start (d22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d38))))

  (:durative-action develop-sales-strategy
    :parameters (?s - t39)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d29)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d39))))

  (:durative-action finalize-operational-handbook
    :parameters (?s - t40)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d8)) (at start (d15)) (at start (d18)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d40))))

  (:durative-action hire-legal-counsel
    :parameters (?s - t41)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (d50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d41))))

  (:durative-action order-office-equipment
    :parameters (?s - t42)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d42))))

  (:durative-action secure-investment-capital
    :parameters (?s - t43)
    :duration (= ?duration 5184000)
    :condition (and (at start (step_pending ?s)) (at start (d4)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d43))))

  (:durative-action review-shipping-regulations
    :parameters (?s - t44)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d44))))

  (:durative-action draft-employment-contracts
    :parameters (?s - t45)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (d9)) (at start (d50)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d45))))

  (:durative-action define-technical-requirements
    :parameters (?s - t46)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d22)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d46))))

  (:durative-action conduct-environmental-study
    :parameters (?s - t47)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (d7)) (at start (d8)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d47))))

  (:durative-action gather-labor-market-data
    :parameters (?s - t48)
    :duration (= ?duration 604800)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d48))))

  (:durative-action order-company-uniforms
    :parameters (?s - t49)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (d13)) (at start (d25)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d49))))

  (:durative-action assign-project-manager
    :parameters (?s - t50)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (d28)) (at start (d60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d50))))

  (:durative-action configure-erp-software
    :parameters (?s - t51)
    :duration (= ?duration 1036800)
    :condition (and (at start (step_pending ?s)) (at start (d33)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d51))))

  (:durative-action finalize-security-plan
    :parameters (?s - t52)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d8)) (at start (d37)) (at start (d58)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d52))))

  (:durative-action define-project-scope
    :parameters (?s - t53)
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending ?s)) (at start (d12)) (at start (d46)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d53))))

  (:durative-action register-employer-insurance
    :parameters (?s - t54)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d23)) (at start (d24)) (at start (d60)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d54))))

  (:durative-action allocate-department-funds
    :parameters (?s - t55)
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending ?s)) (at start (d2)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d55))))

  (:durative-action conduct-risk-audit
    :parameters (?s - t56)
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending ?s)) (at start (d1)) (at start (d11)) (at start (d52)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d56))))

  (:durative-action set-up-support-helpdesk
    :parameters (?s - t57)
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending ?s)) (at start (d12)) (at start (d24)) (at start (d40)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d57))))

  (:durative-action perform-market-gap-analysis
    :parameters (?s - t58)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (d34)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d58))))

  (:durative-action survey-customer-demographics
    :parameters (?s - t59)
    :duration (= ?duration 864000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d59))))

  (:durative-action conduct-stakeholder-interviews
    :parameters (?s - t60)
    :duration (= ?duration 259200)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (d60))))
)