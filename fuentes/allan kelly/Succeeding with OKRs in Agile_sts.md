# Artifact: Succeeding with OKRs in Agile (STS Transformation)

ID: OKR-AGILE-STS-01
Version: 1.0.0
Status: Draft
Human-Creator: FS
Human-Editor: FS
Model-Collaborator: Cascade
Creation-Date: 2025-10-10
Modification-Date: 2025-10-10
Source: Succeeding with OKRs in Agile by Allan Kelly
Ctx: Transformation of the book "Succeeding with OKRs in Agile" into Structured Telegraphic Style (STS) for knowledge curation.

---
BEGIN_LLM_INSTRUCTIONS

You are an AI agent consuming a Structured Telegraphic Style (STS) artifact. Your primary task is to parse and reason over THIS document with absolute fidelity, using only the rules defined below. This artifact is a self-contained source of truth.

1. Core Objective: Maintain perfect fidelity to the information (`meat`) and structure (`skeleton`). Do not summarize, interpret, or infer information not explicitly present. Prohib: Applying these rules to artifact creation or translation tasks; they are exclusively for consumption.

2. Conceptual Metaphors:
    - `meat`: Essential information, data, and facts. Must be preserved with zero loss.
    - `skeleton`: Logical structure (headers, IDs, lists, tables). This is also `meat` and must be preserved.
    - `fat`: Non-essential verbiage (filler words, rhetoric, stylistic prose). Must be ignored during reasoning as it has no informational value.

3. Lexicon Mode & Expansion: This document uses an Abbreviated Lexicon. You MUST treat the following keywords as valid and expand them according to this mapping before processing:
    - `Act:` -> `Action:`
    - `Warn:` -> `Warning:`
    - `Cause:` -> `Cause:`
    - `Cpt:` -> `Concept:`
    - `Cond:` -> `Condition:`
    - `Ctx:` -> `Context:`
    - `Def:` -> `Definition:`
    - `Dep:` -> `Dependency:`
    - `Dest:` -> `Destination:`
    - `Dln:` -> `Deadline:`
    - `Ex:` -> `Example:`
    - `Fnd:` -> `Foundation:`
    - `ID:` -> `ID:`
    - `Instr:` -> `Instruction:`
    - `Just:` -> `Justification:`
    - `Mech:` -> `Mechanism:`
    - `Mssn:` -> `Mission:`
    - `Mdl:` -> `Model:`
    - `Nat:` -> `Nature:`
    - `Obj:` -> `Objective:`
    - `Proc:` -> `Process:`
    - `Prohib:` -> `Prohibition:`
    - `Purp:` -> `Purpose:`
    - `Rec:` -> `Recommendation:`
    - `Ref:` -> `Reference:`
    - `Req:` -> `Requirement:`
    - `Res:` -> `Result:`
    - `Resp:` -> `Responsible:`
    - `Src:` -> `Source:`

4. Reference (`Ref:`) Policy:
    - `Ref:` is used for internal cross-references only.
    - It MUST point to an `ID:` that exists within THIS document.
    - You MUST NOT interpret a `Ref:` as a link to an external document or resource. Mentions of other documents are purely contextual (`Ctx:`).

5. Language Invariance Policy:
    - The `Keywords` in the lexicon are a fixed control vocabulary in English.
    - All `EssentialData` (the content following a `Keyword:`) MUST be preserved in its original language. Do not translate it.

END_LLM_INSTRUCTIONS
---

## Foreword

ID: OKR-AGILE-FOREWORD-01
Src: Mike Burrows, January 2021

### Cpt: Current Problems in Agile

ID: OKR-AGILE-FOREWORD-PROBLEMS-01
Ctx: Analysis of three key problems in the Agile community.

- Cpt: Problem 1: Orientation.
  - ID: OKR-AGILE-FOREWORD-PROBLEM-ORIENTATION-01
  - Def: Divergence between backlog-driven styles and outcome-oriented approaches.
  - Ctx: Worst cases of backlog-driven styles result in mediocre outcomes and damage Agile's reputation.

- Cpt: Problem 2: Autonomy.
  - ID: OKR-AGILE-FOREWORD-PROBLEM-AUTONOMY-01
  - Def: Growing tension between team autonomy and strategy.
  - Ctx: Strategy is often imposed on teams, leading to disempowerment.

- Cpt: Problem 3: Organization.
  - ID: OKR-AGILE-FOREWORD-PROBLEM-ORGANIZATION-01
  - Def: Difficulty in scaling Agile without appropriate organizational design.
  - Ctx: Strategy is often formalized hierarchically (work breakdown structures), which amplifies the other two problems.

### Cpt: OKRs as a Solution

ID: OKR-AGILE-FOREWORD-SOLUTION-01
Purp: Demonstrate how OKRs address the identified problems in Agile.

- Cpt: Solution for Orientation.
  - Mech: Teams pursue meaningful objectives one key result at a time.
  - Nat: Naturally outcome-oriented, iterative, and adaptive.

- Cpt: Solution for Autonomy.
  - Mech: Teams use OKRs to maintain their own understanding of how to meet stakeholder needs.
  - Prohib: Strategy is not imposed from the outside.

- Cpt: Solution for Organization.
  - Mech: Mutual accountability and transparency enable self-organization and learning at all scales.
  - Prohib: Replaces cascading hierarchies of objectives.

### Cpt: Risks and Approach to OKRs

ID: OKR-AGILE-FOREWORD-RISKS-01

- Warn: OKR is not a guaranteed solution.
  - Ctx: It can be approached from the wrong direction, leading to negative outcomes.
  - Ex: Can resemble top-down Management by Objectives (MBO), which was disowned by its creator, Peter Drucker.

- Cpt: Book's Recommended Approach.
  - ID: OKR-AGILE-FOREWORD-APPROACH-01
  - Nat: Bottom-up, not top-down.
  - Proc: Starts at the team level and is managed within an alignment process.
  - Req: Teams express OKRs in their own words, considering others' needs.
  - Res: Fundamentally changes how teams regard their backlogs.

## Preface

ID: OKR-AGILE-PREFACE-01
Src: Allan Kelly, December 2020

### Cpt: Context of the Book's Creation

ID: OKR-AGILE-PREFACE-CONTEXT-01

- Ctx: The book is a product of the Covid-19 lockdown.
- Cpt: Lessons from Covid-19 response related to OKRs.
  - Ctx: The crisis demonstrated the value of agility.
  - Cpt: Urgency created purpose ('stay alive, stay productive').
  - Cpt: Purpose created focus (non-essentials were discarded).
  - Cpt: Success was measured by a single outcome: survival (ability to continue operations).

### Cpt: Core Concepts of OKRs

ID: OKR-AGILE-PREFACE-CONCEPTS-01

- Cpt: Summary of OKRs in three nouns.
  - Def: Purpose, Focus, Outcomes.
- Cpt: Role of Purpose.
  - Req: Teams draw on their purpose (raison d'être) when setting OKRs.
- Cpt: Role of Focus.
  - Req: OKRs should be the focus of all work.
- Cpt: Role of Outcomes.
  - Fnd: Focus is a means to an end: an outcome.
  - Obj: The outcome should advance the organization's purpose.
  - Req: Outcome is central when judging success or failure.
- Cpt: OKRs as Hypotheses.
  - Def: OKRs are a hypothesis for the coming quarter, a best guess at what will advance purpose.
  - Proc: Review and adapt at the end of the quarter.

### Cpt: Digitalization and its Impact

ID: OKR-AGILE-PREFACE-DIGITAL-01

- Cpt: Role of Digital in Covid-19 Response.
  - Fnd: The response was possible due to the digitization of life and commerce.
  - Ctx: A similar crisis in 2000 or 1980 would have had far worse economic consequences due to less advanced technology.
  - Res: Digital technology allowed the economy to continue from home.
- Cpt: Future Impact.
  - Ctx: Covid has accelerated the digital revolution by 5-10 years.
  - Cpt: Agile is the process change that accompanies digital.
    - Cause: Programmers received digital tools first and then invented agile.
    - Res: Agile is the way of working that accompanies digital tools.

### Cpt: Importance of OKRs in a Digital, Distributed World

ID: OKR-AGILE-PREFACE-IMPORTANCE-01

- Cpt: Increased importance of Purpose, Focus, and Outcomes for distributed teams.
  - Prohib: Managers can no longer practice 'management by walking around'.
  - Req: Managers must look at outcomes.
  - Req: Employees must increase focus.
  - Req: Everyone must share a purpose.
- Cpt: Business and Technology Coupling.
  - Fnd: In a digital business, technology is the business.
  - Cpt: Software is never 'finished'; it must change for the business to grow.
  - Mdl: Businesses run on software products, not projects.
  - Req: The management model must change; IT is no longer just a cost center.

### Cpt: Vision for OKRs

ID: OKR-AGILE-PREFACE-VISION-01

- Warn: Some see OKRs as a reinvention of projects (command-and-control, requirements documents).
- Cpt: Author's alternative vision.
  - Def: OKRs fit with a continuous work agenda.
  - Purp: Provide a link to the 'bigger picture' (purpose, mission).
  - Mech: A way for teams and managers to co-create shared goals that deliver beneficial outcomes.
  - Prohib: Not a tool for managers to boss teams around.
- Cpt: OKRs can reawaken Agile's ambition.
  - Res: Managers can be partners focused on the same outcomes.

## Short Quick Lessons

ID: OKR-AGILE-LESSONS-01

### Cpt: Bottom Up

ID: OKR-AGILE-LESSONS-BOTTOMUP-01

- Prohib: Don't impose OKRs from above (top-down).
- Rec: Set OKRs bottom-up.
- Act: Allow each team to set their own OKRs to meet bigger goals.
- Act: Let OKRs trickle up from the bottom.
- Cpt: Leader's Role.
  - Resp: Describe the ultimate goal, paint a picture of the future.
  - Act: Let teams decide how to make that future happen.
- Cpt: Senior Leader's Duty.
  - Resp: Make those dependent on them successful.

### Cpt: Organization

ID: OKR-AGILE-LESSONS-ORGANIZATION-01

- Rec: Make everything subservient to OKRs.
- Act: Throw away the backlog.
- Prohib: Don't attach names to specific objectives or key results.
  - Just: OKRs are a team sport, not an individual's task list.
- Prohib: Don't manage dependencies.
- Rec: Eliminate dependencies.
- Act: Remove interdependencies instead of creating complex OKR-setting processes to manage them.
- Act: Enhance independence, even at the cost of redundancy.
- Act: Connect teams with customers.
- Obj: Increase cohesion and reduce coupling.

### Cpt: True North

ID: OKR-AGILE-LESSONS-TRUENORTH-01

- Rec: Use OKRs for guidance and stay on course.
- Prohib: Don't change or abandon OKRs during a quarter without a fight.
- Warn: Don't stick blindly to OKRs as the world changes.
- Req: Get agreement from the whole team before changing course.
- Cpt: Handling frequent changes.
  - Cond: If goals regularly change over a quarter.
  - Rec: Try working in one-month cycles.
  - Cond: If the rate of change is valuable.
  - Rec: Write OKRs that demonstrate the value of continually changing goals.
- Cpt: Firefighting.
  - Warn: If you always prioritize firefighting, you will only ever be a firefighter.

### Cpt: Leaders

ID: OKR-AGILE-LESSONS-LEADERS-01

- Req: Build psychological safety and make failure an option.
  - Just: People will be ambitious only when it is safe to try, fail, and try again.
- Req: Make the organization's priorities completely clear.
- Req: Be available to teams to answer questions quickly.
  - Just: Teams only have 12 weeks to deliver OKRs.
- Req: Make resources available or explain constraints.
- Req: Make clear the level of OKR achievement teams should aim for (e.g., 70%).
- Warn: OKRs belong to the team; you cannot tell them what to put in their OKRs.

### Cpt: Reviewing

ID: OKR-AGILE-LESSONS-REVIEWING-01

- Rec: Practice tough love when reviewing OKRs.
- Req: Openly acknowledge the need for psychological safety in the review process.
- Cpt: Example Questions.
  - `How does this create value?`
  - `How will this be measured?`
  - `Are these goals ambitious enough?`
  - `Are the goals too ambitious?`
  - `Are OKRs proving useful or getting in the way?`
- Act: Watch for signs that the team fears failure and lacks psychological safety.

### Cpt: Team

ID: OKR-AGILE-LESSONS-TEAM-01

- Resp: The team is responsible for setting and delivering their own OKRs.
- Cpt: Product Owner Role.
  - Def: First among equals when setting priorities.
  - Just: Their skills and experience give them insights into customer value.
- Cpt: Interpreting Completion Levels.
  - Ctx: Teams consistently achieving very high (>90%) or very low (<50%) completion deserve attention.
  - Cause: High completion might indicate a lack of ambition or fear of failure.
  - Cause: Low completion might indicate over-ambition, failure to focus, leadership failure, or lack of organizational support.

### Cpt: Money

ID: OKR-AGILE-LESSONS-MONEY-01

- Prohib: Do not link OKRs to bonuses and remuneration.

# Part I: Why OKRs

ID: OKR-AGILE-PART1-01
Cpt: "One's philosophy is not best expressed in words; it is expressed in the choices one makes." - Eleanor Roosevelt

## 1. Introducing OKR

ID: OKR-AGILE-CH1-01
Cpt: "Simple can be harder than complex... once you get there, you can move mountains." - Steve Jobs

- Def: OKRs = Objectives and Key Results.
- Cpt: OKRs are about goals.
  - Def: Objectives are big goals.
  - Def: Key results are smaller goals that build towards the objective.
- Cpt: Goal Setting as Risk-Reward Calculation.
  - Cpt: Big, ambitious goals have a risk of being missed.
  - Cpt: Small, achievable goals will be hit but may be less satisfying.
- Cpt: Goals bring focus.
  - Warn: Focus also means blinkered vision, which carries dangers.

### 1.1. OKRs as Abstraction

ID: OKR-AGILE-CH1-ABSTRACTION-01

- Cpt: OKRs can be viewed as an abstraction of the desired outcome for a quarter.
- Def: Abstraction is the process of focusing on essential characteristics, omitting irrelevant details.
- Req: The engineering detail is hidden behind the abstract interface.
- Req: Everyone on the team must share the same abstraction.

### 1.2. OKRs as Test-Driven Management

ID: OKR-AGILE-CH1-TDM-01

- Proc:
  1. Decide what you want (the Objective).
  2. Set a series of acceptance criteria (Key Results).
  3. Develop until the criteria are met.
- Cpt: Latitude in Implementation.
  - Ctx: When acceptance criteria are known, engineers have wide latitude in deciding how to meet them.
  - Cond: Constrained by time, resources, and existing technology.

### 1.3. Dissecting OKRs

ID: OKR-AGILE-CH1-DISSECTING-01

- Cpt: Objective.
  - Def: A goal the team wishes to achieve, which might be part of a larger mission.
- Cpt: Key Results.
  - Def: Important outcomes that build towards the objective.
  - Warn: They are more than just milestones, which often lack intrinsic value.
- Cpt: Nature of good OKRs.
  - Nat: Outcome-focused.
  - Prohib: Not for measuring progress or ticking off work items.
  - Req: Each objective has several key results.
  - Req: Each key result should be useful and deliver value in and of itself.
  - Cpt: The value of the whole objective should be greater than the sum of its key results.
- Cpt: Lifecycle.
  - Ctx: Missions are long-lasting.
  - Ctx: OKRs are reset every quarter, starting from a blank sheet.
  - Just: Continuing an OKR is based on new value to be gained, not sunk costs.

### 1.4. OKRs and Agile

ID: OKR-AGILE-CH1-AGILE-01

- Warn: Do not equate Objective to Epic and Key Results to Stories.
- Cpt: OKRs are a machine for generating stories, not a mini-backlog.
- Cpt: Key results can be seen as targets or sprint goals.
- Rec: Throw away the backlog and drive all work from the OKR story machine.
- Cpt: Cadence.
  - Ctx: Quarterly cycle is standard and has a good rhythm.
  - Warn: OKR-setting is not a giant sprint; it is more thoughtful and customer-focused.

### 1.5. Think Broadly, Execute Narrowly

ID: OKR-AGILE-CH1-THINK-EXECUTE-01

- Req: OKRs must be measurable.
- Warn: Hard numbers can get in the way of big thinking and blind one to unintended consequences.
- Proc: Iterate between broad thinking and narrow execution.
  - Act: Think broadly and reflect during OKR setting (hours).
  - Act: Execute with focus during delivery (months).
- Cpt: Real success of OKRs.
  - Fnd: Not whether a specific OKR was achieved.
  - Fnd: The real benefit is in the outcomes delivered and value created.

### 1.6. Ambition over Estimation

ID: OKR-AGILE-CH1-AMBITION-01

- Prohib: OKRs are not for estimation or forecasting.
- Rec: Avoid estimating any objective or key result.
- Obj: To be ambitious and push further.
- Cpt: Target Achievement.
  - Ctx: Teams are not normally expected to complete 100% of OKRs; 70% is common.
  - Warn: Hitting 100% may indicate the team is not aiming high enough.
- Cpt: Psychological Safety.
  - Def: A climate where people feel comfortable expressing themselves, sharing concerns, and making mistakes without fear of retribution.
  - Req: Leaders must provide an environment where it is safe to fail.
  - Prohib: Benchmarking teams, attaching money, or linking performance reviews to OKR completion will destroy psychological safety.
- Cpt: Assessment.
  - Req: Judge performance based on the outcome and value delivered, not on OKR completion percentage.
- Cpt: OKR Setting.
  - Nat: Bottom-up engagement, not top-down control.
  - Resp: Top leaders set the final destination.
  - Resp: The team making the journey decides the route and means.
- Cpt: Engineering within Constraints.
  - Obj: Deliver the best possible widget within constraints (time, people, resources).

## 2. Why use OKRs?

ID: OKR-AGILE-CH2-01
Cpt: "We don't know how to achieve this, but we commit to finding a way." - OpenVMS AXP group

- Ctx: OKRs predate 'agile' but are receiving increasing attention in agile circles.
- Cpt: Three reasons for the good fit between OKRs and Agile:
  1. They fill a need at the mid-term planning level.
  2. They are essentially a test-first approach.
  3. They enhance communication.
- Warn: OKRs are not risk-free and require countermeasures.

### 2.1. Mid-term Planning

ID: OKR-AGILE-CH2-PLANNING-01

- Cpt: Agile has strong short-term (daily stand-up, sprint planning) and long-term (roadmap, vision) planning tools.
- Cpt: A gap exists in the middle ground (beyond the sprint, within the quarter).
- Ctx: Old 'release plans' make less sense with continuous delivery.
- Cpt: OKRs fill this gap.
  - Purp: Provide glue between short-term and long-term plans.
  - Mech: Offer mid-term goals that are consistent enough for meaningful results but flexible enough not to mislead.
- Cpt: Quarterly Cadence.
  - Ctx: Quarterly is the consensus for OKR cycles.
  - Just: Three months is a good balance between strategic thinking and execution.

### 2.2. Test-driven OKRs

ID: OKR-AGILE-CH2-TESTDRIVEN-01

- Cpt: OKRs are a high-level implementation of test-driven development (TDD).
- Cpt: Each Key Result is a measurable test: "Has the result been achieved?"
- Cpt: This is a 'test-first' approach, similar to unit testing or BDD.
- Cpt: Benefits of Test-First.
  - 1. Creates Focus: Knowing the tests for success allows discounting irrelevant work.
    - Mech: Provides a powerful motivational feedback loop (red/green bars).
  - 2. Tells You When to Stop: Stop when the tests pass, avoiding 'gold plating'.
    - Cpt: Analogy: Brakes on a car allow you to go fast because you know you can stop.
  - 3. Forces Thinking in Advance: Forces you to define what you want upfront.

### 2.3. Communication

ID: OKR-AGILE-CH2-COMMUNICATION-01

- Purp: OKRs summarize a team's work in a standardized format.
- Res: Makes it easier to communicate what a team is doing (within the team, to other teams, to managers).
- Res: Simplifies status reporting.
- Res: Offers a mechanism for judging success (motivates continuation) and failure (motivates change).

### 2.4. Warning

ID: OKR-AGILE-CH2-WARNING-01

- Warn: OKRs are not risk-free and can create blindness if not used carefully.
- Cpt: Sometimes the right thing is to throw away an OKR to handle an emergency (e.g., live server down).
- Warn: Not everything that counts can be counted or mapped out in advance.
- Ex: Charles Darwin's logical pro/con list for marriage, where he ultimately decided to 'marry -- marry -- marry'.

## 3. Focus

ID: OKR-AGILE-CH3-01
Cpt: "The main thing to remember is, the main thing is the main thing." - General Gary E Huffman

- Cpt: Focus requires partial blindness; focusing on one thing means not focusing on others.
- Proc: Consciously move between a focused state (for execution) and a broad-thinking state (for strategy).

### 3.1. OKRs Create Focus

ID: OKR-AGILE-CH3-FOCUS-01

- Fnd: The key benefit of OKRs is their ability to focus minds.
- Cpt: The three-month OKR cycle acts as an overarching guide for the sprints within that quarter.
- Cpt: Focus is the secret ingredient that makes things happen, despite constant distractions.
- Cpt: The biggest single reason for using OKRs is to improve collective team focus.
- Mech: OKRs provide leverage to say "No" or "Can it wait?" to work that detracts from focus.
- Ctx: In a world of digital distractions, purposeful focus becomes more valuable.

## 4. OKR History

ID: OKR-AGILE-CH4-01
Cpt: "The normal human reaction is to evade the priority decision by doing a little bit of everything." - Peter Drucker

- Cpt: MBOs (Management by Objective).
  - Src: Advocated by Peter Drucker.
  - Mech: A top-down mechanism where senior managers decree objectives.
- Cpt: Invention of OKRs.
  - Src: Andy Grove at Intel, extending MBOs with a focus on delivery.
  - Ctx: Spread through Silicon Valley via Intel alumni.
- Cpt: Popularization.
  - Src: John Doerr, an ex-Intel VC, introduced OKRs to Google in 1999.
  - Ctx: Doerr's 2018 book "Measure what Matters" further explains OKRs.
- Cpt: Comparison: MBOs vs. Intel OKRs.
  - MBOs: 'What', Annual, Private, Top-down, Tied to compensation, Risk-averse.
  - OKRs: 'What' & 'How', Quarterly/Monthly, Public, Bottom-up/Sideways, Divorced from compensation, Aggressive/Aspirational.
- Warn: OKRs have issues and must be handled carefully.

## 5. Outcomes, Value, and Benefits

ID: OKR-AGILE-CH5-01
Cpt: "Value is perceived benefit." - Tom Gilb

- Req: An OKR Objective should be an outcome, not a proxy for work done.
- Warn: People often value the proxy (e.g., feature completion) instead of the actual outcome (e.g., in use by customers).
- Act: Strive for outcomes that benefit end customers.

### 5.1. Business Benefit and Value

ID: OKR-AGILE-CH5-VALUE-01

- Cpt: Benefits ultimately flow to individual people (employees, managers, customers, stakeholders).
- Cpt: 'Value' and 'Benefit' are generally synonymous.
- Def: 'Business' includes commercial companies, government entities, and charities.
- Req: For non-commercial entities, one must ask "What does this business value?".

### 5.2. Forms of Value

ID: OKR-AGILE-CH5-FORMS-OF-VALUE-01

- Cpt: Value is not only money.
- Cpt: Other forms of value:
  - Learning: Gaining knowledge of new technologies or customer understanding.
  - Feedback: Feeds learning. Feedback that looks like failure can be the most valuable.
  - Risk Reduction: Increases the likelihood of achieving the outcome. Warn: Reducing all risk may negate all benefit.
  - Money: Revenue is a form of feedback on what customers value. Cost savings free up resources.
- Fnd: Ultimately, value is recognized by people.

### 5.3. Pieconomics

ID: OKR-AGILE-CH5-PIECONOMICS-01

- Src: Alex Edmans, "Grow the Pie".
- Cpt: Companies can increase total value by taking a 'stakeholder value' approach rather than a narrow 'shareholder value' view.
- Mech: Grow the pie for everyone, rather than splitting the existing pie differently.
- Fnd: Pursuing a larger pie and non-financial value often brings greater financial rewards too.

# Part II: Writing OKRs

ID: OKR-AGILE-PART2-01
Cpt: "A goal properly set is halfway reached." - Abraham Lincoln

## 6. Writing OKRs

ID: OKR-AGILE-CH6-01
Cpt: "Less is more" / "God is in the details" - Ludwig Mies van der Rohe

- Cpt: Writing OKRs is a strategy question (prioritization), while delivering them is an operational issue (focus).
- Fnd: Prioritization is deciding what to do and what not to do.
- Cpt: Work not in the OKRs is, by definition, lower priority.
- Proc: The OKR cycle is: prioritize, focus, execute, and review.

### 6.1. Ground Rules for Writing OKRs

ID: OKR-AGILE-CH6-RULES-01

- Cpt: Team Setting.
  - Prohib: OKRs handed down from above run against the agile ethos.
  - Req: Team members expect a voice in setting team OKRs.
  - Warn: Team consensus can lead to 'satisficing' (playing it safe).
  - Act: Clarify if OKRs are 'utility' or 'aspirational' before setting them.
- Cpt: Limited Number.
  - Purp: To create focus.
  - Rec: Maximum of 3-4 objectives per team.
  - Rec: Maximum of 3-4 key results per objective.
  - Just: A larger team does not mean more OKRs, as it dilutes collective focus.
- Cpt: Priority.
  - Rec: Order OKRs by priority.
  - Fnd: Prioritization promotes focus, which promotes execution.
- Cpt: Effort (Capacity Allocation).
  - Mech: Allocate effort (e.g., in days or sprints) against OKRs.
  - Warn: Priority and capacity allocation are different things.
  - Req: This is capacity planning, not estimation.
- Cpt: Avoid Planning by OKR.
  - Prohib: Do not use OKRs to list features to build or actions to take.
  - Fnd: The goal is the benefit gained from actions, not the actions themselves.
  - Warn: Using KRs as a plan creates dependencies and fragility.
- Cpt: The Trouble with Pre-work.
  - Warn: Pre-work for future OKRs diverts focus from current OKRs.
  - Warn: Pre-work can be self-limiting and discourage ambition.
- Cpt: When to Set OKRs.
  - Rec: Set a few weeks in advance (e.g., 2-3 weeks).
  - Rec: Use the last week of a quarter to close current OKRs and set new ones.
- Cpt: Not Money.
  - Prohib: Do not reduce all goals to 'Make more money'.
  - Fnd: Purpose beyond profit is more motivating and, paradoxically, often leads to more profit.

## 7. Objectives

ID: OKR-AGILE-CH7-01
Cpt: "Ends themselves, however, are often merely instrumental to more final objectives." - Herbert A. Simon

- Req: The first thing to write is the objective.
- Def: The objective is the outcome you are seeking.
- Ctx: It should be something the organization values and contributes to bigger goals.
- Ctx: Your objective may be a building block for a larger objective.

### 7.1. Characteristics of a Good Objective

ID: OKR-AGILE-CH7-CHARACTERISTICS-01

- Cpt: Background Analysis.
  - Prohib: The OKR itself is not the place for detailed analysis or reasoning.
  - Rec: Park the rationale elsewhere and link via footnote if necessary.
- Cpt: Objective Value.
  - Req: The objective must be meaningful and deliver business benefit (value).
  - Ctx: Value can be non-financial (Learning, Risk Reduction, Strategy Advancement).
  - Warn: Avoid stating objectives as 'Make more profit' as it is too general.
- Cpt: Obvious Value.
  - Rec: Make the value the objective brings blindingly obvious to others.
  - Mech: Use the 'so that' technique or bring the benefit to the front of the statement.
  - Ex: `Reduce time to market and testing effort by reducing regression test cycle from four days to two days.`
- Cpt: Wide Objectives.
  - Rec: The objective should state a beneficial outcome, but be wide enough to allow the team to find different ways of realizing it.
  - Prohib: Avoid boxing the team into a specific solution in the objective.
  - Res: A wide objective empowers the team and increases the chance of achievement.
- Cpt: Feature Factories.
  - Warn: OKRs are not a good match for 'feature factories' where teams just deliver pre-specified features.
  - Ctx: If you run a feature factory, don't dress it up as OKRs.
  - Rec: If you regularly set objectives like `Deliver high value/priority backlog items`, consider it a red flag.
- Cpt: One for the Team.
  - Rec: Adopt a rule: one objective per quarter nominated by the team to increase their productive capacity.
  - Ctx: This builds future capacity, even if it directs effort away from immediate value.
- Cpt: Testing Trouble.
  - Warn: Some objectives take time to demonstrate results (e.g., `Increase customer visits by 10% over the next month`).
  - Warn: It can be difficult to measure the true impact of technology change (the 'productivity paradox').
  - Req: Strive for testable objectives but recognize their limitations.

## 8. Key Results

ID: OKR-AGILE-CH8-01
Cpt: "One of the great mistakes is to judge policies and programs by their intentions rather than their results." - Milton Friedman

- Req: Key results should be more than just milestones or a sequence of tasks (waterfall).
- Cpt: Key results are like user stories: they aim for a valuable outcome and represent a test.
- Rec: Fight against 'dominos' (dependencies between key results).
  - Just: Dependencies increase risk; if one fails, subsequent ones are imperiled.
  - Act: Strive to make key results independent, vertical slices that deliver value.

### 8.1. Example: Online Store

ID: OKR-AGILE-CH8-EXAMPLE-01

- Obj: Open an online store by 1 December.
- Cpt: Bad Key Results (dominos/waterfall).
  - `- KR #1: Agree requirements`
  - `- KR #2: Decide on software architecture`
- Cpt: Good Key Results (vertical slices).
  - `- KR #1: Customers can browse online catalog and put items in a shopping basket.`
    - Res: Provides early feedback and reduces technology/market risk.
  - `- KR #2: Secure checkout with at least one major credit card payment available.`
    - Res: Further validates the end-to-end experience.
  - `- KR #3: Have at least ten target customers use the site for purchases and gather feedback.`
    - Res: Sets up for the next quarter's work.
- Warn: Avoid diseconomies of scale; adding a second credit card increases testing and complexity more than linearly.

### 8.2. Test-Driven Key Results

ID: OKR-AGILE-CH8-TESTDRIVEN-01

- Req: Key results must be testable.
- Act: Turn vague platitudes into testable statements.
- Ex: `Make the site easy to use` -> `New users can complete a purchase on the site within five minutes without cursing`.
- Act: Thinking about how you will test something helps unlock what is required.

### 8.3. Binary vs. Analog

ID: OKR-AGILE-CH8-ANALOG-01

- Cpt: Binary Key Results.
  - Def: All or nothing; either 100% done or 0% done.
  - Warn: Discourages starting large tasks near the end of a quarter.
- Cpt: Analog Key Results.
  - Def: Some amount of functionality is done (e.g., `Site can accept three major credit cards`).
  - Res: Allows the team to get credit for partial completion (e.g., 2 out of 3 cards implemented).
  - Res: Gives the team flexibility and allows for just-in-time decision making.
  - Res: Reduces risk and minimizes the domino effect.

## 9. Measuring

ID: OKR-AGILE-CH9-01
Cpt: "Managers who don't know how to measure what they want settle for wanting what they can measure." - Russell L. Ackoff

- Warn: Skipping quantification stores up problems and subjective judgments.
- Ctx: Even with quantification, the final assessment often involves a degree of judgment.

### 9.1. How to Quantify

ID: OKR-AGILE-CH9-QUANTIFY-01

- Req: Each objective and key result should be quantifiable from the start.
- Act: Ask: `How will this be measured?`, `What is the unit?`, `What is the current value?`, `What is the target?`.
- Fnd: Anything can be measured if it can be observed.

### 9.2. Measuring the Impossible

ID: OKR-AGILE-CH9-IMPOSSIBLE-01

- Proc: To measure something difficult, first identify its desired attributes.
- Ex: To measure 'code quality', attributes could be: low defect count, low cyclomatic complexity, high unit test count, few engineer complaints.
- Act: Once attributes are defined, devise a 'meter' to measure them, even if it's a rough one.

### 9.3. Removing Subjectivity

ID: OKR-AGILE-CH9-SUBJECTIVITY-01

- Cpt: The OKR process follows a Plan-Do-Check-Act cycle.
- Proc:
  - 1. Plan (Broad/Subjective): Have discussions, consider viewpoints, then commit to quantified goals.
  - 2. Do (Narrow/Objective): Pursue the goal for the quarter.
  - 3. Check/Act (Review/Learn): Stop, review, assess, and learn.
  - 4. Feed lessons back into the next planning cycle.

### 9.4. Unintended Consequences

ID: OKR-AGILE-CH9-CONSEQUENCES-01

- Warn: A narrow focus on hitting numbers can cause teams to 'game the system' or create damage elsewhere.
- Ex: To lower bug counts, teams could simply stop reporting defects.
- Req: Subjectivity is necessary during delivery to ensure the means justify the ends and results are honest.

### 9.5. Don't Boil It Down

ID: OKR-AGILE-CH9-BOILDOWN-01

- Prohib: Do not boil down all OKR results into a single summary number (e.g., '75% overall').
- Just: It loses too much information and encourages teams to set easy goals to get a high score.
- Rec: To summarize a quarter, look at the benefit delivered and value created, not a single percentage.

## 10. Key Result Tricks

ID: OKR-AGILE-CH10-01
Cpt: "The first order of business is to try. You must try until your brain hurts." - Elon Musk

- Purp: Outline techniques to make key results more achievable and increase team autonomy.

### 10.1. Experiments

ID: OKR-AGILE-CH10-EXPERIMENTS-01

- Purp: A way of attempting something with an uncertain outcome without the risk of failure.
- Mech: Phrase a key result as an experiment.
- Ex: `Increase customer page views by 10%` -> `Run three experiments to increase page views`.
- Cpt: Success Criteria.
  - Def: Success is doing the experiment and absorbing the learning, not reaching a specific target.
  - Ctx: Working software is a byproduct of the learning.
- Cpt: Options.
  - Def: Experiments create options and gather information before commitment.

### 10.2. Hypothesis-Driven Development (HDD)

ID: OKR-AGILE-CH10-HDD-01

- Src: Barry O'Reilly.
- Def: Treating the development of new ideas as a series of experiments to determine if an expected outcome will be achieved.
- Mdl: O'Reilly's template:
  - `We believe <this capability>`
  - `Will result in <this outcome>`
  - `We will have confidence to proceed when <we see a measurable signal>`
- Cpt: Success Criteria.
  - Def: The outcome is learning (proving or disproving a theory), not delivering something.
  - Warn: Disproving a theory can be more valuable than proving one.

### 10.3. Time-boxing

ID: OKR-AGILE-CH10-TIMEBOX-01

- Def: An agile technique where a fixed amount of time is allocated to an activity.
- Purp: Encourages teams to take on risk or step into the unknown.
- Ex: `Spend one person-week improving the user interface.`
- Cpt: Measurement.
  - Def: The measurement is that the work was done, not the specific benefit delivered.

### 10.4. Surveys

ID: OKR-AGILE-CH10-SURVEYS-01

- Purp: A way to test a key result related to changes in people (e.g., improving communication).
- Mech: Use a survey to measure if the desired change has occurred.
- Ex: `Improve product owner communication... Survey POs after third event and aim to have 75% agreeing that communications are better.`

### 10.5. Knowing When to Stop

ID: OKR-AGILE-CH10-STOP-01

- Req: OKRs need a clear end state to know when you are done.
- Cpt: Techniques like time-boxes, experiments, and surveys provide natural break points.
- Ctx: Even open-ended OKRs are time-boxed by the quarterly review cycle.

## 11. Planning Cycle

ID: OKR-AGILE-CH11-01
Cpt: "We are not here to curse the darkness, but to light the candle..." - John F. Kennedy

- Fnd: The OKR routine should mimic the sprint routine (Plan-Do-Check-Act).
- Proc: Sketch a timeline for OKR setting in advance and plan backwards from the live date.
- Cpt: OKR Setting Process.
  - Resp: A whole-team exercise, with the Product Owner taking the lead.
  - Req: The team must listen to stakeholders (customers, managers, other teams).
  - Act: Gather the team for broad thinking and deep conversations.
  - Rec: Compress the process into a single week rather than spreading it out.
  - Rec: Start the process late in the quarter to avoid distraction and premature decisions (last responsible moment).
- Cpt: During the Quarter.
  - Ctx: The team is a black box to stakeholders. OKRs go in; benefits come out.
  - Rec: Use a live visual display for status to avoid constant stakeholder queries.
- Cpt: End-of-Quarter Review.
  - Purp: Team and stakeholders meet to review progress.
  - Ctx: A good time for a longer, quarter-focused team retrospective.
- Cpt: Mid-Quarter Review.
  - Purp: Can be useful for updating stakeholders and getting help with impediments.
  - Warn: Should be dropped if they become micromanagement exercises.
- Cpt: Product Owner Role.
  - Resp: Continuously thinks about future OKRs, validating ideas with analysis and customer contact.

# Part III: Working with OKRs

ID: OKR-AGILE-PART3-01
Cpt: "...the execution and delivery are what's key." - Sergey Brin

## 12. Organizing to Deliver OKRs

ID: OKR-AGILE-CH12-01
Cpt: "The absence of alternatives clears the mind marvelously." - Henry Kissinger

- Cpt: Two schools of thought on organizing for OKRs.
  - 1. Additive: OKRs are added to the existing mix of work (backlog, BAU, etc.).
    - Warn: Adds more work to an already full system.
  - 2. Subservient: OKRs are everything; all decisions and actions flow from them.
    - Rec: Author's preferred approach. Throw away the backlog.
- Req: Make a conscious decision on where your organization sits on this spectrum.
- Cpt: OKRs Everywhere.
  - Act: Post OKRs in a prominent place.
  - Req: Team members should constantly pull discussions back to the OKRs.

### 12.1. Sprint Planning with OKRs

ID: OKR-AGILE-CH12-SPRINTPLANNING-01

- Req: OKRs must be central to each sprint planning meeting.
- Proc:
  1. Review current OKRs.
  2. PO directs team to the highest priority OKR.
  3. Focus conversation exclusively on that item.
  4. Aim to advance across a narrow front ('short-and-fat' work).
- Prohib: Avoid 'do a little of everything'.
- Prohib: Avoid pre-work on lower-priority objectives.

### 12.2. Status Tracking

ID: OKR-AGILE-CH12-STATUS-01

- Purp: Marking status on OKRs speeds up reviews.
- Cpt: Traffic Lights (Red/Amber/Green) are common but can be ambiguous.
- Rec: A more fine-grained status system:
  - White/Clear: Not started
  - Yellow: Started, on course
  - Green: Achieved
  - Red: Troubled
  - Purple: Abandoned

## 13. OKRs and the Backlog

ID: OKR-AGILE-CH13-01
Cpt: "One never notices what has been done; one can only see what remains to be done." - Marie Curie

- Cpt: Two choices for the backlog.
  - 1. Backlog drives OKRs, then OKRs draw from the backlog.
  - 2. Forget about the backlog (author's recommendation).
- Cpt: 'OKRs First' Approach.
  - Proc: In each sprint planning, wipe the sheet clean and ask "How can we make progress on our OKRs?"
  - Fnd: Don't be constrained by previous ideas or sunk costs (Jeff Bezos' 'Day 1' approach).
  - Cpt: Success is delivering OKRs/business benefit, not burning down the backlog.
  - Def: The backlog is just a bunch of ideas.
- Cpt: Conflict Resolution.
  - Fnd: The conflict is between the Product Backlog and work that builds towards OKRs.
  - Cpt: 'Backlog first' approach: OKRs are guidelines for choosing work from the backlog.

## 14. BAU - Keeping the Lights On

ID: OKR-AGILE-CH14-01
Cpt: "Every fighter's got a plan until they get hit." - Joe Louis

- Cpt: Problem of Business As Usual (BAU).
  - Def: Work that supports ongoing business benefit, not new benefit (e.g., fixing bugs, help-desk calls).
  - Ctx: BAU doesn't generate new benefit; it maintains the status quo.
  - Cpt: Tension: BAU lacks the glamour of 'change' objectives but is necessary and consumes resources.

### 14.1. Strategies for Managing BAU

ID: OKR-AGILE-CH14-STRATEGIES-01

- Cpt: Option 1: Suppress BAU.
  - Mech: Deliberately refuse BAU requests.
  - Just: OKR priorities are more important than day-to-day issues.
  - Warn: A valid short-term option, but deferred problems can grow.

- Cpt: Option 2: Reduce or Remove BAU.
  - Mech: Set an OKR specifically to reduce or automate BAU work.
  - Ex: `Objective: reduce time on support requests from 4 hours/week to 1 hour/week.`

- Cpt: Option 3: Make BAU Better.
  - Ctx: For teams that exist purely to do BAU (e.g., help-desk).
  - Mech: Set objectives related to improving the BAU work itself (e.g., efficiency, quality, timeliness).

- Cpt: Option 4: Objective Zero.
  - Mech: Recognize BAU in the OKRs as a formal "Objective 0".
  - Purp: Makes all work visible and highlights the less glamorous work.
  - Ex: `Objective 0: keep existing system operation and customer issues within the historic range.`
  - Warn: The downside is it adds another objective, potentially reducing focus.
  - Rec: Author's preferred approach because it exposes the tension, allowing it to be addressed openly.

## 15. Executing

ID: OKR-AGILE-CH15-01
Cpt: "My strength lies solely in my tenacity." - Louis Pasteur

- Fnd: Executing against OKRs requires a laser-like focus on delivery.

### 15.1. Techniques for Execution

ID: OKR-AGILE-CH15-TECHNIQUES-01

- Cpt: Keeping Focus.
  - Mech: Resist work requests that do not build towards your goals.
  - Act: Constantly bring conversations back to the OKRs.
  - Act: Limit the number of OKRs to 3-4 maximum.

- Cpt: Prioritize.
  - Mech: Prioritize the OKRs themselves (e.g., depth-first or breadth-first).
  - Resp: The PO has a large say, but the team should decide on what to cut.
  - Act: Ask stakeholders for input on priorities to retain ownership.

- Cpt: Visual Display.
  - Def: Use an 'information radiator' (Alistair Cockburn) to make OKRs and their status highly visible.
  - Prohib: Do not hide them on a wiki page.

- Cpt: Revisit Often.
  - Rec: Review OKRs at every sprint planning meeting.
  - Fnd: It becomes essential if you abandon the backlog.

- Cpt: Time-slice.
  - Mech: Apply time-boxing during execution, even if not defined in the original KR.
  - Res: Constraining time can spur creativity and force a solution within limits.

## 16. Going Off-Piste

ID: OKR-AGILE-CH16-01
Cpt: "All we have to decide is what to do with the time that is given us." - J.R.R. Tolkien

- Fnd: Sometimes the right thing to do is to ignore the OKRs and handle a crisis or valuable unplanned work.
- Cpt: The Sweet Spot.
  - Def: Finding a balance between rigid adherence to OKRs and bending to every new request.
- Cpt: Judgment Call.
  - Fnd: Deciding whether to go off-piste is a judgment call with no hard rules.
  - Cpt: Guiding questions:
    - `Is the new request more valuable than the current OKRs?`
    - `Does the requester understand the consequences?`
    - `Is there time to consult the team/PO?`
- Cpt: Prepare for the Unexpected.
  - Act: During OKR-setting, discuss examples of work that would have priority over OKRs.
  - Act: Use retrospectives to examine past decisions on unplanned work.
- Cpt: Track Distractions.
  - Mech: Create a feedback loop by tracking unplanned but urgent work (e.g., on a yellow card).
  - Purp: Use the data to reason about the disruptions and decide on a course of action (e.g., allow capacity for it, adopt an Objective Zero).

## 17. Beyond the Quarter

ID: OKR-AGILE-CH17-01
Cpt: "The process of planning is very valuable... but the actual plan that results from it is probably useless." - Marc Andreessen

- Fnd: Agile involves significant planning, but it's done 'just in time' and involves the whole team.
- Cpt: Planning is Learning.
  - Purp: The value of long-term planning is in the learning it creates about the future, not the plan itself.
  - Def: A plan is a hypothesis; executing it is an experiment.

### 17.1. Three Horizons of Planning

ID: OKR-AGILE-CH17-HORIZONS-01

- Cpt: Horizon 1: Short-Term (Sprint Planning).
  - Ctx: For today and the next couple of weeks. Action-oriented.
- Cpt: Horizon 2: Mid-Term (Quarterly Planning).
  - Ctx: The 'planning glue' between long and short-term.
  - Mech: OKRs work well as this glue.
- Cpt: Horizon 3: Long-Term (Roadmap).
  - Ctx: Looks years into the future. An analysis activity focused on future outcomes.

### 17.2. From Roadmap to OKRs

ID: OKR-AGILE-CH17-ROADMAP-01

- Cpt: Planning is a rolling process.
  - Ideal: Long-term plan drives OKRs, which drive sprint planning.
  - Reality: The process is not a rational machine. The long-term plan is just one of many inputs to the quarterly OKR process.
- Cpt: Other Inputs to OKR Planning.
  - Ctx: Finances, competitor actions, media, economy, government policy, customer feedback.
- Fnd: There are few prizes for staying on plan; outcomes are the prizes.

## 18. Integrated Planning

ID: OKR-AGILE-CH18-01
Cpt: "Let chaos reign, then rein in chaos... plan the way a fire department plans." - Andy Grove

- Fnd: The team does not exist in a vacuum; it must listen to customers and stakeholders.
- Cpt: With team sovereignty comes accountability to those providing funding.
- Cpt: Planning serves to integrate different views and agree on shared priorities.

### 18.1. OKR Roadmap

ID: OKR-AGILE-CH18-ROADMAP-01

- Purp: To distill the long-term plan into a rough roadmap of objectives for future quarters.
- Mech: The PO sketches out objectives for the next 4 quarters, creating a 'straw man' for conversation.
- Ctx: It is a rolling plan, revised each quarter.
- Fnd: The roadmap is a hypothesis; showing it to stakeholders is a cheap way to test it.

### 18.2. The Product Owner and Planning

ID: OKR-AGILE-CH18-PO-01

- Cpt: The PO is a leader in the team, but not *the* leader.
- Resp: The PO's role is to lead thinking on what to do, gathering customer requests and understanding stakeholder value.
- Cpt: The PO works in the 'problem space' (analysis), while most of the team works in the 'solution space' (synthesis).
- Def: The PO is 'first among equals' when deciding what to work on next.

# Part IV: Leadership

ID: OKR-AGILE-PART4-01
Cpt: "...management has a much greater impact on both companies and projects than almost any other measured phenomenon." - Capers Jones

## 19. Strategy

ID: OKR-AGILE-CH19-01
Cpt: "'Then it doesn't matter which way you go', said the Cat." - Lewis Carroll

- Fnd: Agile is not 'no planning'. A purely reactive strategy can be a sign of cluelessness.
- Cpt: Big Goals.
  - Def: Strategy can be a goal, mission, vision, BHAG, or guiding principles (a 'true north').
  - Def: Strategy can be a plan, or it can be a pattern of consistent behavior over time (emergent or deliberate).
  - Cpt: Even a purely reactive team is pursuing a strategy; it should be a conscious decision.
- Cpt: Strategic Intent.
  - Def: The goal to aim for, free of the 'how', 'why', or 'when'.
  - Purp: Informs day-to-day decisions even without a detailed plan.
- Cpt: Agile makes strategy more important.
  - Warn: The reactive capability of agile means teams need to decide consciously how to use it.
  - Cpt: OKRs form the link between the big strategy and the specific work of agile teams.
- Cpt: Opportunity Cost.
  - Def: In doing X, you do not do Y. The lost benefit of Y is the opportunity cost.
  - Mech: Strategy acts as a filter to accelerate 'what to do' decisions.
- Cpt: What Not to Do.
  - Purp: A strategy's most important function is telling you what not to do.
- Cpt: Shared Mental Model.
  - Purp: Strategy becomes a heuristic that accelerates decision-making for the whole team.
  - Res: Creates congruent decisions and actions, leading to high-performing teams.

## 20. Leaders

ID: OKR-AGILE-CH20-01
Cpt: "...the willingness to confront unequivocally the major anxiety of their people in their time. This... is the essence of leadership." - J.K. Galbraith

- Cpt: Leader's Role in OKR Implementation.
  - 1. Enthuse people to try OKRs.
  - 2. Support them through their first steps.
  - 3. Sustain and deepen OKR usage to achieve business goals.
- Cpt: Leader vs. Manager.
  - Ctx: For this discussion, the terms are treated as synonymous.
  - Fnd: Not all leaders are managers, but managers are expected to be leaders.
- Cpt: Three Big Responsibilities of Leaders.
  - 1. Culture: Setting the tone, norms, and expectations.
  - 2. Big Goals: Setting the overarching goals the organization is chasing.
  - 3. Strategy Elements: Defining the constraints and enablers for how teams work.
- Cpt: Day-to-Day Support.
  - Resp: Provide resources teams need (especially the leader's own time).
  - Resp: Respond promptly to requests and questions.
- Cpt: Leaders and Culture.
  - Mech: Leaders' primary tool is their own actions; they must embody the culture they want to promote.
  - Act: Use rewards (especially unexpected ones) and simple praise ('Thank you') to acknowledge good work and reinforce desired behaviors.
  - Prohib: Chastising people for poor behavior is unlikely to work and breeds defensiveness.

## 21. Culture

ID: OKR-AGILE-CH21-01
Cpt: "...culture... can be easily destroyed given a neglectful management." - Henry Mintzberg

- Fnd: Sustaining OKRs requires a supportive culture.
- Cpt: Attributes of a Supportive Culture.
  - Cpt: Delivery Culture.
    - Req: Must value delivery of actual working products to actual customers.
    - Fnd: Both Agile and OKRs aim to create a delivery culture.
    - Fnd: The organization needs to be team-centric, with stable, long-lived teams.

  - Cpt: Customers.
    - Fnd: Delivery alone is not enough; the outcome must provide benefit to a customer.
    - Req: Teams need to be customer-oriented and develop deep customer understanding.

  - Cpt: Openness and Feedback.
    - Fnd: Short feedback cycles in Agile and OKRs support learning and action.
    - Def: Each objective is a hypothesis; putting it in front of a customer is an experiment.
    - Cpt: Failed experiments produce learning, which has value.
    - Req: This requires a failure-tolerant organization that celebrates failure as a sign of ambition.

  - Cpt: Psychological Safety.
    - Req: To aim high and run experiments, individuals need psychological safety.
    - Def: Feeling safe to express doubts, ask questions, be honest, and be themselves without fear of retribution.
    - Resp: Leaders must model the desired behaviors.

  - Cpt: Ambition.
    - Req: Individuals and teams need collective ambition to be better, to learn, and to deliver benefit.

## 22. Leaders and Planning

ID: OKR-AGILE-CH22-01
Cpt: "Loyalty from the top down is even more necessary and much less prevalent." - General George S. Patton

- Cpt: Traditional vs. Agile Planning.
  - Traditional: Leaders planned, workers executed. Plans were a command-and-control mechanism.
  - Agile: The team doing the work is best placed to plan. Planning is devolved.
- Cpt: Leader's Role in Agile Planning.
  - Mech: A modified 'think broad, execute narrow' approach.
  - Resp: Paint the big picture, set big goals, and frame planning discussions.
  - Resp: Continually expound the broad view while supporting the team's narrow execution.
- Cpt: Forward Planning.
  - Resp: Leaders describe what the future can be but leave space for teams to fill in the blanks.
  - Instr: "Never tell people how to do things. Tell them what to do, and they will surprise you with their ingenuity."
- Cpt: Cascade Up, Not Down.
  - Warn: If OKRs are used top-down, they are little more than MBOs.
  - Proc: Big goals pass down, but OKRs should cascade up from the teams.
  - Cpt: A leader's #1 objective should be 'My teams succeed in their goals'.

# Part V: Forewarnings

ID: OKR-AGILE-PART5-01
Cpt: "It is impossible to live without failing at something..." - J.K. Rowling

## 23. Aspirations

ID: OKR-AGILE-CH23-01
Cpt: "Our problem is not that we aim too high and miss, but that we aim too low and hit."

- Cpt: Aspirational Mode.
  - Def: OKRs are 'moonshots' aiming for 10x performance.
  - Fnd: Teams are expected to fail their OKRs.
  - Just: A team aiming for 10x and achieving 5x still outperforms a team that aims for 1.1x and succeeds.
  - Warn: Creates cognitive dissonance ('failure' can be a better result than 'success').
- Cpt: Utility Mode.
  - Def: Using OKRs for their other benefits without 10x aspirations.
  - Cpt: Benefits include outcome orientation, prioritization, focus, shared goals, and communication.
  - Rec: A good starting point for teams new to OKRs.
- Cpt: Creating Aspirations.
  - Warn: 'Just add OKRs' will not miraculously create an aspirational culture.
  - Req: Requires a supportive environment, psychological safety, and motivated individuals.
- Cpt: OKR Adoption Route.
  - Proc:
    1. Aspire to aspirational OKRs, but start in small steps.
    2. Begin in utility mode.
    3. Work on improving psychological safety.
    4. Work with others in the organization to nudge the culture.
    5. Keep OKRs separate from performance appraisals.

## 24. Everyday Pitfalls

ID: OKR-AGILE-CH24-01
Cpt: "...software systems do not work well until they have been used, and have failed repeatedly, in real applications." - Dave Parnas

- Cpt: OKR Buffet.
  - Def: Having too many OKRs, allowing team members to pick and choose, leading to a lack of collective focus.
- Cpt: Late-arriving OKRs.
  - Def: Adding OKRs late in the setting process without proper team discussion and enrollment.
- Cpt: Adding to the Story Hierarchy.
  - Prohib: Avoid creating a 5-level hierarchy (Objective -> KR -> Epic -> Story -> Task).
  - Rec: See OKRs as an engine for creating stories, not as part of the same hierarchy.
- Cpt: Counting Problems.
  - Ctx: Ambiguity can arise in what it means to 'achieve' an objective if a different path is found.
- Cpt: Lack of Respect.
  - Req: Respect for specialists (like the PO) and their authority in their specific areas.
  - Req: Respect for managers as stakeholders who have a right to be heard.
  - Fnd: A balance is needed between the decentralized authority of the team and the centralized authority of managers.

## 25. Trouble with Targets

ID: OKR-AGILE-CH25-01
Cpt: "[GNP] measures everything, in short, except that which makes life worthwhile." - Robert Kennedy

- Fnd: Acknowledges the valid critique that reducing everything to a number is an oversimplification.
- Cpt: The tension between quantification for focus and the risk of a blinkered view is real.
- Req: One must learn to balance these two opposing forces.

## Epilogue

ID: OKR-AGILE-EPILOGUE-01

- Cpt: OKRs are a means to an end, not an end in themselves.
- Fnd: The goal is to deliver benefit and value to customers and stakeholders.
- Cpt: OKRs can be a powerful tool for agile teams to increase focus, connect strategy to execution, and enhance team working.
- Warn: OKRs are not a silver bullet; they need to be adapted and used with care.
