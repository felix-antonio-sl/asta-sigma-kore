# Artifact: A Little Book about Requirements and User Stories

ID: AGILE-US-MASTER-01
Version: 1.0.0
Status: Draft
Human-Creator: Allan Kelly
Human-Editor: FS
Model-Collaborator: Cascade
Creation-Date: 2025-10-10
Modification-Date: 2025-10-10
Source: A Little Book about Requirements and User Stories by Allan Kelly
Ctx: Transformation of the source text into Structured Telegraphic Style (STS).

---
BEGIN_LLM_INSTRUCTIONS

You are an AI agent consuming a Structured Telegraphic Style (STS) artifact. Your primary task is to parse and reason over THIS document with absolute fidelity, using only the rules defined below. This artifact is a self-contained source of truth.

1. Core Objective: Maintain perfect fidelity to the information (`meat`) and structure (`skeleton`). Do not summarize, interpret, or infer information not explicitly present. Prohib: Applying these rules to artifact creation or translation tasks; they are exclusively for consumption.

2. Conceptual Metaphors:
    - `meat`: Essential information, data, and facts. Must be preserved with zero loss.
    - `skeleton`: Logical structure (headers, IDs, lists, tables). This is also `meat` and must be preserved.
    - `fat`: Non-essential verbiage (filler words, rhetoric, stylistic prose). Must be ignored during reasoning as it has no informational value.

3. Lexicon Mode & Expansion: This document uses an Abbreviated Lexicon. You MUST treat the following keywords as valid and expand them according to this mapping:
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

## 1. User Stories: Conversation and Benefit

ID: AGILE-US-CONVERSATION-01
Purp: To define the fundamental nature and attributes of user stories in an agile context.

### 1.1. Definition and Origin

ID: AGILE-US-DEFINITION-01

- Cpt: User Story.
  - Def: A widely used requirements technique in the agile world.
  - Mdl: `As a <someone> I want to do something So that <some result or benefit>`
  - Src: Devised in 2001 by a team at Connextra in London.
- Cpt: Agile Requirements Approach.
  - Nat: Emphasizes just-in-time requirements, not upfront preparation in large documents.
  - Ctx: Traditional requirements engineering techniques are still valid, but their output format changes.
  - Mech: The requirements person (PO, BA, PM) embodies the understanding; the user story represents the work to be done.

### 1.2. Core Attributes

ID: AGILE-US-ATTRIBUTES-01
Fnd: Three attributes make user stories suitable for agile methodologies.

- Cpt: Attribute 1: Lightweight.
  - Def: They do not impose significant upfront costs on the team.
- Cpt: Attribute 2: Easy to understand.
  - Def: No extensive training is required to understand them.
- Cpt: Attribute 3: Easy to share.
  - Def: Objectives are simple to communicate between the technical team and customers.
  - Just: This attribute is preferred because it makes stories inclusive, allowing customer engagement.
  - Warn: Other techniques may offer superior analysis and rigor, but they create a barrier between technical experts and customers.

### 1.3. The Story as a Placeholder

ID: AGILE-US-PLACEHOLDER-01

- Cpt: Placeholder for a Conversation.
  - Def: User stories are not complete requirements. They capture the essence of what is wanted, not the detail.
  - Req: A discussion about the story's needs will occur when the work is to be done.
- Cpt: Token for Work.
  - Def: Stories are tokens representing work to be done, not the work itself.
  - Act: These tokens can be prioritized, shuffled, refined, changed, and split.
- Cpt: The Conversation.
  - Req: The conversation to understand the job is the first step when a story is selected.
  - Resp: Participants should include the requirements person, coder, and tester.
  - Warn: Including the tester in the conversation is more important than including the coder.
- Cpt: Story Imperfection.
  - Rec: User stories should not be made perfect.
  - Nat: They are transitory, short-lived, and a means to an end.
  - Prohib: Trying to make user stories perfect is the biggest mistake.
- Cpt: Communication Method.
  - Rec: Conduct the conversation in person, not through documentation.
  - Cause: Written documents have a dual cost: writing time plus reading time.
  - Res: In-person conversation is cheaper, timelier, and more effective than documents or email.

### 1.4. Business Benefit Requirement

ID: AGILE-US-BENEFIT-REQ-01

- Req: Every story must have some business value.
- Cpt: Forms of Business Value.
  - Ex: Earn revenue.
  - Ex: Reduce costs.
  - Ex: Attract customers.
  - Ex: Make employees more effective.
- Cpt: Financial Valuation.
  - Rec: Ideally, each story should have a financial amount (hard dollar number) stating its monetary value.
  - Res: Having a financial value simplifies prioritization.
  - Mech: Use techniques like poker cards for value estimation or role-playing (e.g., Shark Tank) where one team pitches stories to another.
- Cpt: Non-Quantifiable Benefit.
  - Cond: Valuing a story can be difficult.
  - Cause: Some stories deliver intangible benefits, are a small part of a larger whole, improve UX/quality, or are mandatory.
  - Req: Even without a quantifiable benefit, a statement of benefit must exist.
    - Mdl: "Fred says this story is beneficial because...."
- Cpt: Definition of Business Benefit.
  - Def: Anything that helps the business and its representatives accept the story as useful.
  - Ex: Learning and knowledge creation.
  - Ex: Market inquiries.
  - Ex: Demonstrating commitment to a stakeholder.
- Fnd: Someone wants the story and should be able to express the reason as a benefit.
- Warn: If there is no identifiable benefit, the story should not be built.
- Cpt: Overall Assessment.
  - Ctx: User stories are the worst requirements technique, except for all the others (paraphrasing Winston Churchill).

## 2. The Golden Rules: Small and Beneficial

ID: AGILE-US-GOLDEN-RULES-01
Purp: To define the two primary rules for creating effective user stories.

### 2.1. The Two Rules

ID: AGILE-US-TWO-RULES-01

- Cpt: Rule 1: Beneficial.
  - Req: Each story must be beneficial to the business.
  - Rec: It should carry a statement of value.
  - Ctx: It is better to talk about "business benefit" than "business value" since not all benefits are financial.
- Cpt: Rule 2: Small.
  - Req: Each story must represent a small piece of work.
  - Def: "Small" means the work should be deliverable soon.
  - Mdl: A rough rule of thumb is less than two weeks of elapsed effort (10 working days) from start to readiness for delivery.
  - Ctx: This is a generous definition; some consider two days a long time.
  - Rec: Always strive for smaller stories. Most stories should be delivered much sooner than two weeks.
- Cpt: Story Decomposition.
  - Req: Bigger stories must be broken down into smaller ones.
  - Warn: This requires active effort; stories do not break themselves down.

### 2.2. The Balancing Act

ID: AGILE-US-BALANCING-ACT-01

- Nat: There is a tension between the two golden rules.
  - Cause: The "business benefit" rule tends to make stories larger.
  - Cause: The "small" rule tends to make stories smaller.
- Cpt: Risk of Losing Benefit.
  - Warn: In the effort to make stories smaller, many lose their business benefit.
  - Res: When benefit is lost, business representatives lose interest in the stories and the work.
  - Res: The technical team risks losing credibility.
- Cpt: Authority on Benefit.
  - Resp: The product owner or customer representative has the final say on what constitutes a benefit.
  - Cond: Even if the technical team can split a story, if the requirements specialist sees no benefit in each part, the split is invalid for user stories.
- Cpt: Technical Tasks vs. User Stories.
  - Ex: A story to "Store and restore system state" was split into "Save data" and "Load data".
    - Ctx: This makes technical sense as they are independent work items.
    - Just: The business analyst rejected the split, stating "Neither has value on its own; only the whole has value to us."
    - Res: They did not stand as good user stories.
    - Rec: The technical team can split the work into tasks ("Save data" task, "Load data" task) but not into separate stories.
  - Cpt: Negotiation of Benefit.
    - Mech: The technical team could argue that demonstrating the "Save data" function shows progress to a customer, thus having a benefit.
    - Ctx: The business analysts have the right to maintain their original position.

### 2.3. Sizing and Its Benefits

ID: AGILE-US-SIZING-01
Purp: To define "small" in the context of user stories and outline the advantages of smaller stories.

- Cpt: Definition of "Small".
  - Mdl: A rough rule of thumb is less than two weeks of elapsed effort (10 workdays).
  - Ctx: This is a generous definition; some consider two days a long time.
  - Req: Exceptions should be rare.
  - Obj: Always strive for smaller stories.

- Cpt: Benefits of Small Stories.
  - Cpt: Process Flow.
    - Res: Smaller pieces of work flow through a process more easily.
  - Cpt: Forecasting.
    - Res: Smaller requests are accomplished more quickly, leading to smoother flow and greater predictability.
  - Cpt: Business Benefit Realization.
    - Res: Delivering work sooner generates benefit sooner, increasing the return on investment.
  - Cpt: Risk Management.
    - Res: It is easier to spot risks and identify troublesome work.
    - Res: Risk is reduced as the system as a whole is less prone to disruption.
  - Cpt: Impact of Failure.
    - Res: The impact of a problem is lessened because the affected work is smaller.
    - Ex: Failure of one of ten $10,000 pieces of work costs $10,000, while failure of one $100,000 piece of work costs $100,000.

### 2.4. Factors Influencing Story Size

ID: AGILE-US-SIZE-FACTORS-01

- Fnd: There is no single right size for a user story.
- Dep: The right size depends on multiple factors and varies between teams.

- Cpt: Factor 1: Team Knowledge.
  - Def: The domain knowledge of the software creation team.
  - Cond: A team with long-term domain experience will understand more instinctively.
    - Res: They need less explanation and know the language, domain, and context.
  - Ex: Airline Software Development.
    - - Cpt: Inexperienced outsourced team.
        - Req: Needed more help from the customer and detailed stories.
        - Res: Stories were so small it was difficult to see the business benefit.
      - Cpt: Experienced internal team.
        - Res: Immediately knows industry terms and standards.
        - Res: Can work with less detail and bigger stories.

- Cpt: Factor 2: Technologies in Use.
  - Ctx: Teams using modern, high-level languages (PHP, Python, Ruby) can often handle bigger stories.
  - Ctx: Teams using older system languages (C, C++, Java) may require smaller stories.

- Cpt: Factor 3: Iteration Length and Rules.
  - Cond: Teams with four-week iterations are more willing to accept bigger stories.
  - Cond: Teams with one-week iterations will challenge bigger stories more often.
  - Res: The pressure from shorter iterations can be beneficial for creating small stories.

### 2.5. Skill Development

ID: AGILE-US-SKILL-DEV-01

- Nat: Writing stories that are both small and beneficial is a skill that requires practice.
- Rec: For those new to writing stories, every opportunity should be taken to make them smaller.
- Ctx: Mistakes will be made and are a source of learning.
- Obj: Maintain the goal of small, manageable stories that retain business benefit.
- Cond: When you have too many small stories, it is time to consider merging them.
- Instr: Until that point, continue making stories smaller while retaining business benefit.

## 3. Assessing Business Value

ID: AGILE-US-VALUE-ASSESSMENT-01
Purp: To explore methods and considerations for assessing the business value of user stories.

### 3.1. Value Dichotomy

ID: AGILE-US-VALUE-DICHOTOMY-01

- Ex: Airline Website Redesign.
  - Cpt: User Feedback.
    - Res: Sample customers found it harder to find the lowest flight price.
  - Cpt: Airline Action.
    - Act: The airline proceeded with the new content despite the feedback.
  - Cpt: Outcome.
    - Res: Airline revenue increased as customers spent more money.
  - Cpt: Conclusion.
    - Fnd: What customers valued and what the airline valued were different things.
- Cpt: Value Sustainability.
  - Warn: Pinning down financial value can be hard, especially in a corporate IT setting.
  - Ctx: The airline example highlights the question of value sustainability.
  - Cpt: Short-term gain vs. long-term risk.
    - Res: The airline increased revenue in the short term.
    - Risk: In the long term, customers might perceive flights as more expensive and switch to competitors.

### 3.2. Calculating Business Value

ID: AGILE-US-VALUE-CALCULATION-01

- Mech: The obvious way to value a story is to consider the financial benefit it will bring.
- Cpt: Expected Outcomes.
  - Res: Increase revenue.
  - Res: Reduce costs.

- Cpt: Revenue Increase Example.
  - Mdl: "As a widget seller, I would like to sell my widgets online."
  - Proc: Analysis Questions.
    - 1. How many widgets might be sold online? (Do/would people buy them online?)
    - 2. What is the likely selling price online? (Will customers expect a discount?)
    - 3. Will online sales cannibalize offline sales?
  - Cpt: Problem of Guesswork.
    - Warn: Answering these questions often involves guesswork.
    - Risk: Guesswork is open to questioning and attacks if someone dislikes the answer.
  - Cpt: Role of Research.
    - Ctx: More research reduces guesswork but may not increase accuracy.
    - Fnd: Intuition and rough rules of thumb can sometimes be more accurate than complex formulas (Ref: Gerd Gigerenzer's "Risk Savvy").
  - Cpt: Identifying Driving Forces.
    - Res: Analysis might reveal a dominant trend (e.g., online sales rocketing while offline sales plummet) that makes the decision clear.

### 3.3. Assessing Cost Savings

ID: AGILE-US-COST-SAVINGS-01

- Mdl: "As a supermarket manager, I want self-checkout lines so that I can reduce the number of cashiers."
- Proc: Analysis Questions.
  - 1. How many customers will use self-checkout?
  - 2. How many cashiers might that replace?
  - 3. Might self-checkout lead to increased theft or reduced upselling opportunities?
- Cpt: Qualitative Changes.
  - Warn: Qualitative changes (e.g., customer experience) are difficult to value.
  - Risk: A worse shopping experience may not affect the bottom line immediately but can have a large impact over time.
- Cpt: Time to Realize Savings.
  - Warn: It might take years for customers to adopt the change and for staff to be reduced.
  - Ctx: Research shows IT changes can take decades to realize cost savings.

### 3.4. Time as a Business Factor

ID: AGILE-US-TIME-FACTOR-01

- Cpt: The Cost of Analysis.
  - Cost 1: Direct cost of paying someone to do the analysis and research.
  - Cost 2: Delay cost. Analysis delays development and product release.
  - Cost 3: Opportunity cost. Delay leaves opportunities for competitors.
- Cpt: Historical vs. Modern Development.
  - Ctx: In the era of COBOL/C, extensive upfront analysis was logical due to long development cycles.
  - Ctx: In the modern era of high-productivity tools (Ruby on Rails, AWS), it may be faster to develop, deploy, and analyze results than to perform a detailed upfront analysis.

### 3.5. The Role of Company Strategy

ID: AGILE-US-STRATEGY-ALIGNMENT-01

- Mech: A shortcut to evaluating stories is to check for alignment with the company's overall and IT strategies.
- Res: If a story does not align, analysis time is saved.
- Req: This requires that a clear, well-communicated strategy exists.
- Ex: "As a taxi company, I want customers to be able to book a taxi using a phone app so that..."
  - Cpt: Ending A (Cost Reduction).
    - Res: "...I can reduce the number of people employed answering phones to save money."
  - Cpt: Ending B (Revenue Generation).
    - Res: "...I can take more bookings for more taxis and generate more revenue."
  - Cpt: Ending C (Business Disruption).
    - Res: "...I can disrupt the business model of taxi companies and build a single global company."
- Fnd: The valuation of a story is vastly different depending on its ending, which is determined by company strategy.

## 4. The "Who" of the User Story

ID: AGILE-US-WHO-01
Purp: To analyze the importance of correctly identifying the user or stakeholder in a user story.
Fnd: The user story format is `As a <someone>, I want to do something so that <some result or benefit>`.

### 4.1. Evolution of "Who"

ID: AGILE-US-WHO-EVOLUTION-01

- Ex: Medical Software Team.
  - Cpt: Initial Stories.
    - Mdl: "As a user, I want..."
  - Cpt: Role-Specific Stories.
    - Mdl: "As a doctor..." or "As a lab technician..."
  - Cpt: Ultimate Customer Stories.
    - Mdl: "As a patient, I want..."
  - Res: Improved understanding of who used the software led to seeing multiple products where there was previously one.
  - Res: Identifying dedicated products helped prioritize and accelerate delivery.

### 4.2. Generic vs. Specific Users

ID: AGILE-US-WHO-GENERIC-VS-SPECIFIC-01

- Cpt: Anti-Pattern: "As a user...".
  - Warn: These words add no value to the story.
  - Instr: If you see them, delete them.
  - Just: Users are not homogenous.
- Cpt: Anti-Pattern: "As a customer...".
  - Ctx: A minor improvement, but customers are also not homogenous.
- Cause: Stories starting this way suggest they were written in a hurry with little thought given to the actual user.
- Req: Always seek to be as specific as possible about the "who" in a story.

### 4.3. Roles, Personas, and Stakeholders

ID: AGILE-US-WHO-ROLES-PERSONAS-STAKEHOLDERS-01

- Cpt: Roles.
  - Def: The people who would use the system (hands on keyboard/touch screen).
  - Ctx: User stories encourage a user-centric design paradigm.

- Cpt: Personas.
  - Def: Fictional characters created to represent the different user types.
  - Src: Originated in marketing, adopted by UX design.
  - Purp: Bring texture, feeling, and an understanding of the target user.
  - Mech: Help teams imagine and empathize with customers.
  - Res: Help narrow the definition of who will use the system, making the story smaller.

- Cpt: Stakeholders.
  - Def: Individuals or groups who have an interest in the system.
  - Ctx: All personas play a role, and all roles are stakeholders, but not all stakeholders are roles.
  - Nat: They might not benefit; they may be adversely affected but still have an interest.
  - Rec: It can be helpful to write stories about stakeholders, not just roles.
  - Ex: A call center manager who never uses the software is a stakeholder.
    - Mdl: "As a call center manager, I want new employees to be able to learn to use the system in less than two days so that they are productive as soon as possible."
  - Warn: Stories about stakeholders may be larger in size.

- Cpt: Analysis Balance.
  - Ctx: Identifying stakeholders, roles, and personas adds analysis to user stories.
  - Rec: Some analysis is useful, but avoid it becoming an end in itself.
  - Fnd: Diminishing returns set in quickly. Doing work and looking at results becomes a faster way to learn.

### 4.4. Anti-Pattern: Stories About the Team

ID: AGILE-US-WHO-ANTIPATTERN-TEAM-01

- Prohib: Writing stories about development team members (programmers, testers, etc.).
- Cause: Team members are not typical customers of the software they create.
- Ex: "As a programmer, I would like to write some code so that I can get paid for coding."

- Cpt: The Product Owner Proxy Problem.
  - Ctx: The product owner often appears incorrectly in stories.
  - Ex (Bad): "As a product owner, I want the system to take payment from customers so that they can pay for their purchases."
    - Just: The PO is a proxy for the customer, not the ultimate beneficiary.
  - Ex (Good): "As a buyer, I want to pay for my purchases."
    - Res: This version is shorter and clearer.
- Cpt: Omitting the "So That" Clause.
  - Cond: If the "so that" clause is obvious or trivial, it can be skipped.

- Cpt: Root Cause of Team-Centric Stories.
  - Warn: If stories are repeatedly written about team members, it may be a sign of a problem.
  - Cause: The team may not understand who the customer is, who will use the product, or who will receive the benefits.
  - Cause: The product owner may be missing or not performing their job correctly.

### 4.5. Anti-Pattern: Stories About Organizations

ID: AGILE-US-WHO-ANTIPATTERN-ORGANIZATION-01

- Prohib: Writing stories about organizational entities.
- Cause: Shows a lack of focus and understanding. Stories are vague and overly verbose.
- Ex (Bad):
  - "As the business, I want lots of rich content..."
  - "As an online shop, we want customers to pay..."
  - "As an airline, I want all flight options presented..."
- Rec: Rewrite these stories from a customer perspective.
- Res: This may result in more stories, but they will be more specific and potentially smaller.
- Ex (Good):
  - "As a business traveller I want options presented so I can book a flight which best fits my schedule."
  - "As a Mum I want to see which flights I can book for my family of four during the summer so that I can travel on the cheapest dates."

### 4.6. Exceptions for Team-Facing Stories

ID: AGILE-US-WHO-EXCEPTIONS-01

- Cond: There are occasional exceptions to the rule against team-centric stories.
- Ex: "As a tester, I want to see a log of all user actions so that I can check that the final reports are what was requested."
  - Just: Such extra functionality allows the team to work more effectively.
- Warn: If there are many stories using this formula, it indicates a need for questioning.
- Instr: Any story referencing the team or organization should be treated with suspicion. Explain the exception or rewrite the story.

### 4.7. Systems as Roles

ID: AGILE-US-WHO-SYSTEMS-AS-ROLES-01

- Cpt: The Question.
  - Def: "Can you have another system as a role?"
- Cpt: System-as-Role Stories.
  - Def: Stories where another system interfaces as a data source or destination.
  - Ex:
    - - "As the payroll system I want to know the tax code of every employee..."
    - - "As the ticketing system I want to know who has bought tickets..."
- Cpt: The Problem with System Roles.
  - Fnd: User stories are a placeholder for a conversation.
  - Problem 1: Who do you have the conversation with?
    - Ctx: The other system's developers might provide documentation, but there is no one to talk to when questions arise.
    - Warn: Computer systems are hard to negotiate with.
  - Problem 2: How do you judge the benefit?
    - Ctx: There is no human in the story to have a conversation with about the benefit.
- Cpt: Finding the Human Beneficiary.
  - Fnd: Someone, somewhere, will receive the benefit of the two systems collaborating. If not, the story is unnecessary.
  - Fnd: The system-to-system interaction is actually one part of a bigger story that has been prematurely broken down.
- Cpt: Reframing the Story.
  - Instr: When tempted to write a story about a system, step back.
  - Proc:
    - 1. Imagine the two systems as one combined system.
    - 2. Ask: "who wants this? who will use this? who will receive the benefit?"
    - 3. These questions will lead to a "somebody" (a human).
  - Ex (Reframed): "As a payroll manager I want salary payments to made after tax deductions so that employees have simpler tax schedules."
    - Res: Now there is a stakeholder who receives the benefit and can answer questions.
    - Ctx: This real story requires work in two different systems.

- Cpt: Managing Cross-System Work.
  - Cond: The same story might exist in the backlogs of two different teams (one for each system).
  - Rec: A better solution is to have one story for one team that has the skills and authority to work on both systems (a vertical team).
  - Warn: Needing to split a story across two teams is not ideal.
  - Ctx: One system story is OK, but six is a potential problem.

### 4.8. The Role of Conversation

ID: AGILE-US-CONVERSATION-ROLE-01

- Fnd: Better-written stories always help.
- Mech: If conversations happen around the stories, talking should resolve confusion.
- Warn: When conversations don't happen, greater demands are placed on the stories, making them resemble old-style requirements.
- Ctx: If you find yourself arguing over the words on the card, you are not having a constructive conversation.

## 5. Stories, Epics, and Tasks

ID: AGILE-US-HIERARCHY-01
Purp: To define the hierarchical relationship between Epics, Stories, and Tasks as organizational tools for work.

### 5.1. Story Splitting

ID: AGILE-US-HIERARCHY-SPLITTING-01

- Cpt: Story Splitting Heuristic.
  - Instr: Look for keywords like `and`, `or`, `either`, `but` as opportunities to split a story.
  - Ex: A story card saying "real time and historical reports" was split into multiple smaller stories.

### 5.2. Levels of Granularity

ID: AGILE-US-HIERARCHY-LEVELS-01

- Cpt: Ideal Scenario.
  - Cond: Some teams work only with stories.
  - Ctx: Their stories make sense to business and tech, are deliverable quickly, and have value.
- Cpt: Alternative Structure.
  - Mdl: A three-tier structure of Epics (large), Stories (medium), and Tasks (small).

### 5.3. Epics: Large-Scale Functionality

ID: AGILE-US-HIERARCHY-EPICS-01

- Def: A big piece of functionality the business wants, delivered via multiple smaller stories.
- Nat: Epics break the "small" rule but hold the most business benefit.
- Purp:
  - Cpt: Milestone or notable delivery.
  - Cpt: Placeholder for future breakdown into smaller pieces.
- Rec: It is useful to use the "As a..." format for epics, but it is not a strict rule.

### 5.4. Tasks: Small-Scale Work Items

ID: AGILE-US-HIERARCHY-TASKS-01

- Def: Smaller work items that are required to build a story.
- Purp: Breaking a story into tasks is an act of shared design by the development team.
- Cpt: Task Attributes.
  - Nat: Devoid of independent business benefit.
  - Nat: Not a vertical (end-to-end) slice of functionality.
  - Dest: Written by the team, for the team, using technical language.
  - Resp: Can be for programmers, testers, analysts, or anyone on the team.
  - Ctx: Size is typically a day or less. "Zero point tasks" are allowed for trivial work (e.g., "Call Bob...").
- Cpt: Story Breakdown into Tasks.
  - Cond: Not all stories need to be broken down into tasks.
  - Dep: The need for breakdown depends on existing knowledge, technology, architecture, and story size.
  - Res: Task breakdown is useful for incorporating different points of view.

### 5.5. The Three Organizational Levels

ID: AGILE-US-HIERARCHY-ORGANIZATION-01

- Mdl: Epic -> Story -> Task.
- Cpt: Usage Flexibility.
  - Rec: Do not feel obligated to use all three levels.
  - Ctx: Two levels (e.g., stories and tasks) or even one level (stories) can be sufficient.
- Cpt: Anti-Pattern: Excessive Levels.
  - Prohib: Avoid introducing more than three levels (e.g., "tertiary epics", "subtasks").
  - Cause: Adding levels increases administration and confusion, and the effort outweighs the benefit.
- Cpt: Alternative Nomenclature.
  - Ctx: Tools and teams may use different names.
    - - Tasks -> `subtasks`
      - Stories -> `features`
      - Epics -> `themes`
  - Instr: Ensure the entire team understands the chosen terms and uses them consistently.
  - Req: Stick to three or fewer levels.

### 5.6. Mapping Levels to Planning Horizons

ID: AGILE-US-HIERARCHY-PLANNING-01

- Cpt: Color Coding Example.
  - White cards -> Tasks.
  - Blue cards -> Stories ("Blue is for business").
  - Blue cards -> Epics (seldom make it to the physical board).
- Cpt: Planning Alignment.
  - Cpt: White Tasks.
    - Ctx: For now (the current/upcoming iteration).
    - Dest: Mainly for the team.
  - Cpt: Blue Stories.
    - Ctx: For near-term iterations.
    - Resp: Lined up by the product owner.
  - Cpt: Epics.
    - Ctx: For the future.
    - Ctx: Touch on strategy, may be beyond the product owner's scope.

### 5.7. Summary of Hierarchy

ID: AGILE-US-HIERARCHY-SUMMARY-01

- Res: The choice among stories, epics, and tasks provides flexibility.
- Ctx: It is not mandatory to use all levels.
- Fnd: A clear understanding of the differences between each level improves the accuracy of sprint planning.

## 6. Defining Acceptance Criteria

ID: AGILE-US-AC-01
Purp: To define Acceptance Criteria (ACs) and their role in relation to user stories and tests.

### 6.1. Definition and Purpose

ID: AGILE-US-AC-DEFINITION-01

- Cpt: Acceptance Criteria (ACs).
  - Def: The main points or general rules to consider when coding and testing a user story.
  - Ctx: Also known as "conditions of satisfaction".
  - Mech: On physical index cards, ACs are captured on the back of the user story card.

### 6.2. ACs vs. Acceptance Tests

ID: AGILE-US-AC-VS-TESTS-01

- Warn: ACs are NOT acceptance tests.
- Proc: Professional testers can elaborate ACs later to produce detailed and specific test scripts (automated or manual).
- Ctx: Test scripts require more space than an index card.

### 6.3. Elaboration and Responsibility

ID: AGILE-US-AC-ELABORATION-01

- Cpt: Limiting Detail.
  - Fnd: The finite space on physical cards deliberately limits writing.
  - Req: Stories should not contain every detail.
  - Rec: In electronic systems, teams must resist the temptation to add excessive detail.
  - Fnd: A story is a placeholder for a conversation.

- Cpt: Responsibility for ACs.
  - Resp: ACs are usually written by the same person who wrote the story (e.g., Product Owner).
  - Cond: When a PO is short on time, ACs are often dropped.
  - Cond: Testers may need to step in to add ACs themselves.
  - Cpt: Testers' Role.
    - Proc: Testers typically start with existing ACs, may give feedback, and create actual tests from them.
  - Cpt: Absence of Testers.
    - Cond: If no professional testers exist, the PO or developers might write the tests.
    - Warn: Developer-written tests can be great or awful, depending on the context.
- Cpt: Value of ACs.
  - Just: Even if not turned into full tests, ACs are useful.
  - Res: They promote conversation between the PO and developers, improving mutual understanding.

- Cpt: Requirements vs. Specifications.
  - Def: The story and ACs form the requirement.
  - Def: The tests form the specification.
  - Ctx: Requirements describe what the business wants; specifications describe the detailed, testable parameters of the solution.
  - Mech: Techniques like Specification by Example and ATDD make specifications executable.

- Cpt: Collaborative Discussions ("Three Amigos").
  - Def: Conversations where people representing requirements, testing, and coding discuss a story.
  - Act: They may change ACs, add to them, or split the story.

### 6.4. Level of Detail and Timing

ID: AGILE-US-AC-DETAIL-TIMING-01

- Cpt: Level of Detail.
  - Ex: Story for a postal address might have an AC: "Customers must provide a valid postal address."
  - Ctx: The definition of "valid postal address" is not elaborated in the AC.
  - Dep: The amount of detail needed depends on the team's knowledge and experience.
  - Rec: Conversation is better than excessive detail in ACs.

- Cpt: Timing of AC Definition.
  - Cpt: The Problem.
    - Cond: Programmers may resist estimating a story without ACs.
    - Risk: Writing ACs for a story that is not scheduled is wasted time.
    - Risk: If a story is delayed, the ACs may become outdated.
  - Cpt: The Solution: Just-In-Time ACs.
    - Rec: The PO should not write ACs until the last possible moment (e.g., just before the planning meeting).
    - Opt-1: Write ACs within the iteration, before coding. This means estimates must include the effort for writing ACs.
    - Opt-2: Write ACs within the planning meeting.
  - Cpt: Test Script Timing.
    - Rec: Test scripts based on ACs are best created within the iteration, preferably before coding begins.

### 6.5. Summary of AC Usage

ID: AGILE-US-AC-SUMMARY-02

- Fnd: ACs expand on user stories but are not a substitute for conversation.
- Instr: Use ACs sparingly to record key criteria at a high level.
- Instr: Defer details to conversations and elicit specifications as needed.

## 7. Acceptance Criteria, Specifications, and Tests

ID: AGILE-US-SPEC-TESTS-02
Purp: To clarify the relationship between ACs, specifications, and tests, and how they drive development.

### 7.1. Premature Specification

ID: AGILE-US-SPEC-TESTS-PREMATURE-SPEC-02

- Ex: "Please wait" icon story.
  - Ctx: A specification required a "Please wait" icon during database access.
  - Problem: Database access was too fast for the icon to be seen.
  - Res: The developer introduced an artificial delay to meet the literal specification.
- Cpt: The Agile Alternative.
  - Fnd: In agile, a conversation would resolve such a mismatch. Stories and understanding can change.
  - Mech: The developer could ask, "What if the database returns very quickly?"
  - Mech: The PO would have the authority to say the timer is not needed for fast results.
  - Rec: The decision could be postponed to a later iteration if needed.

### 7.2. Splitting Stories by Acceptance Criteria

ID: AGILE-US-SPEC-TESTS-SPLITTING-BY-AC-02

- Fnd: Making stories small is difficult.
- Mech: Each individual AC is potentially a story in its own right.
- Proc:
  1. Take an AC from an original story.
  2. Write it on the back of a new card.
  3. Write a new, more restricted story on the front.
- Res: Creates a very small piece of functionality that delivers a tiny bit of business benefit (e.g., shows progress).
- Res: Reduces the risk of the original story by creating a smaller stepping stone.

### 7.3. Requirements vs. Specifications Defined

ID: AGILE-US-SPEC-TESTS-DEFS-02

- Cpt: Requirement.
  - Def: The things customers want to achieve; the problem for the team to solve.
- Cpt: Specification.
  - Def: The parameters within which the solution must operate; the details.
- Fnd: Specifications are tests, and tests are specifications.
- Just: One cannot know if a specification is satisfied if it cannot pass a test.
- Cpt: Executable Specifications.
  - Def: Automating tests creates executable specifications.

### 7.4. Specification by Example

ID: AGILE-US-SPEC-TESTS-SBE-01

- Def: Using concrete examples to model the specification.
- Mech: Creating tests requires generating test scenarios, which are examples of what the system needs to do.
- Res: Users can read, comment on, and discuss these examples.
- Ex: Instead of "The system shall identify squares," use "When I show the system a picture of a square, it displays 'square'."
- Cpt: Benefits of Test Automation.
  - Fnd: The real value of BDD and ATDD is promoting meaningful conversations.
  - Res: Fast feedback (tightened feedback loop).
  - Res: Rigor (flushes out details and anomalies).
  - Res: Legacy (catches future problems).
  - Res: Communication (readable tests are powerful communication tools).
  - Res: Documentation (executable tests ensure no discrepancy between spec, tests, and code).

## 8. Definition of Done

ID: AGILE-US-DOD-01
Purp: To explain the "Definition of Done" (DoD) and its role in ensuring quality.

### 8.1. Definition and Purpose

ID: AGILE-US-DOD-DEFINITION-01

- Cpt: Done-Done.
  - Def: Work is not only completed but also complies with a common standard known as the Definition of Done.
- Cpt: Definition of Done (DoD).
  - Def: An informal checklist that the team agrees applies to all pieces of work.
  - Resp: The whole team is responsible for creating, approving, and applying the DoD.
  - Mech: It is an aide-memoire, a reminder of the agreement.
- Ex: A team's DoD checklist.
  - JUnit tests written for code.
  - Peer code review conducted.
  - Product owner approved.
  - Interface to third-party system double-checked.

### 8.2. DoD vs. Acceptance Criteria

ID: AGILE-US-DOD-VS-AC-01

- Fnd: The DoD is not an alternative to ACs; it is a generic baseline for all stories.
- Cpt: Relationship.
  - Ctx: Every set of ACs has an unwritten first item: "Conforms to the definition of done."
  - Ctx: Every DoD has an implicit line item: "All acceptance criteria pass."
- Purp: The aim of both is to improve the quality of the code produced.
- Just: Higher-quality code saves time and money by reducing the cycle of testing and fixing.

### 8.3. Applying DoD to Tasks and Epics

ID: AGILE-US-DOD-APPLICATION-01

- Cpt: DoD for Tasks.
  - Cond: For teams that break stories into tasks, the question arises: Does the DoD apply to stories or tasks?
  - Res: It can apply to either or both, as long as the team agrees.
  - Ctx: Some DoD items might be trivial or not applicable at the task level.
- Cpt: Multiple DoDs.
  - Ctx: A team might define two DoDs: one for the task level and one for the story level.
- Cpt: DoD for Epics.
  - Rec: It is seldom necessary to apply a DoD at the epic level due to variability.
  - Warn: Avoid criteria like "All stories complete" for an epic's DoD, as it can lead to building unneeded stories.

### 8.4. DoD Across the Board

ID: AGILE-US-DOD-WORKFLOW-01

- Mech: The DoD can be seen as the preconditions for work entering the "done" state.
- Cpt: Exit Criteria.
  - Fnd: The DoD also forms the post-condition, or exit criteria, of the previous state/column on a visual board.
  - Res: This concept can be extended to define exit criteria for each column on the board.
  - Ex: "Acceptance criteria completed" as an exit condition for an analysis column.

### 8.5. Reviewing and Updating the DoD

ID: AGILE-US-DOD-REVIEW-01

- Req: The DoD is not set in stone and should be reviewed periodically (e.g., quarterly).
- Purp: To tighten the definition over time to yield higher-quality code.
- Warn: An overly long definition might be self-defeating.
- Obj: Eventually, items in the DoD should become so ingrained that the definition becomes redundant and can be removed or rewritten with new quality goals.

## 9. Working with Nonfunctional Requirements (NFRs)

ID: AGILE-US-NFR-01
Purp: To explain how to handle nonfunctional requirements within an agile framework.

### 9.1. Definition and Example

ID: AGILE-US-NFR-DEFINITION-01

- Cpt: Nonfunctional Requirement (NFR).
  - Def: A constraint on the system that is independent of a single piece of functionality.
  - Ex: Speed of execution (performance), ease of use, security.
- Ex: Bank Payment Processing.
  - Ctx: A new payment process had to run within a specific time window.
  - Problem: The team did not specify or test for this NFR.
  - Res: The new code functioned correctly but ran too slowly, causing business disruption.

### 9.2. NFRs as User Stories

ID: AGILE-US-NFR-AS-STORIES-01

- Mech: Regular user story format can be used for most NFRs.
- Mdl: "As an accounts clerk, I want the balance sheet report to be delivered within two minutes."
- Rec: If forcing an NFR into the story format is awkward, just write the requirement plainly and discuss it.
- Cpt: NFRs on Existing Systems.
  - Ctx: For an existing system, an NFR story is often about improving current functionality (e.g., "Make the current functionality faster").
- Cpt: Test-Driven Approach.
  - Fnd: The key to NFRs is usually tests.
  - Instr: Before development, create and run tests for the NFR.
- Cpt: Splitting NFR Stories.
  - Cond: If functionality does not yet exist, the NFR is a constraint on future work.
  - Proc: Split the story into two:
    1. Build the basic functionality.
    2. Add the NFR, which necessitates a test and potentially more work.
- Warn: NFRs are cross-cutting and can "come back to bite you" long after they are considered done.
- Mech: Create a test that fails just below the required threshold (e.g., a test that fails at 0.8 seconds for a <1 second requirement) to provide an early warning if performance degrades.

### 9.3. Quantifying NFRs

ID: AGILE-US-NFR-QUANTIFY-01

- Req: NFRs must be quantified. How fast is fast? How secure is secure?
- Req: This demands measurement tools.
- Cpt: Tom Gilb's "Planguage".
  - Proc: Ask these questions to specify the NFR:
    1. What is the unit of measurement? And what is the measuring tool?
    2. What is the current measurement?
    3. What is the desired measurement?
- Fnd: Without answers, NFRs become subjective and hard to test.

### 9.4. NFRs as Constraints and Value

ID: AGILE-US-NFR-CONSTRAINTS-01

- Nat: NFRs are constraints or parameters within which the system must operate.
- Cpt: Analog Requirements.
  - Fnd: This reveals that all requirements are analog, not binary.
  - Instr: Instead of "Do we have function X?", ask "How much of this function do you need?".
  - Ex: How fast, how accurate, how current should the balance sheet be?
- Res: This provides a tool to break stories into smaller pieces.
- Cpt: Connecting to Value.
  - Fnd: This brings the conversation back to business benefit.
  - Ex: How much more valuable is it for the clerk to have the balance sheet in two minutes rather than four?
  - Res: Knowing the value helps with cost-benefit analysis and considering different engineering solutions.

## 10. Stakeholders

ID: AGILE-US-STAKEHOLDERS-01
Purp: To discuss the importance of identifying and engaging stakeholders to determine real business benefit.

### 10.1. Stakeholder-Driven Prioritization

ID: AGILE-US-STAKEHOLDERS-PRIORITIZATION-01

- Ex: Bill, the development manager.
  - Problem: Multiple stakeholders with competing requests, usually driven by revenue.
  - Solution: Bill convened a bi-weekly meeting for stakeholders to discuss and prioritize work requests among themselves.
  - Res: Bill received a prioritized list to execute.
  - Fnd: How they arrived at the priority is less important than the fact that they did.

### 10.2. Seeking Real Benefit

ID: AGILE-US-STAKEHOLDERS-BENEFIT-01

- Mech: Instead of relying on dollar amounts, talk to the person who requested the story.
- Proc: Ask "What benefit will this bring you?" or "What will X allow you to achieve?".
- Cpt: Stakeholder Analysis.
  - Def: An old business analysis technique to understand who has an interest in a system and what that interest is.
  - Ctx: Still valid in agile, but must be accelerated (days, not months).
- Proc: Track requests back to the people who will receive the benefit, not just the people who suggested the story.
- Res: This can reveal that actual benefits are negligible.
- Res: Having a statement of business benefit can substitute for a financial valuation.

### 10.3. Downsides of Valuation

ID: AGILE-US-STAKEHOLDERS-VALUATION-DOWNSIDES-01

- Risk 1: Numerical Bias.
  - Warn: A story with a dollar value will likely be prioritized over one with a qualitative statement, even if the latter has higher value.
- Risk 2: Analysis Paralysis.
  - Warn: Those who disagree with a valuation may endlessly demand more details and find fault, distracting from the actual work.

### 10.4. Evaluation: Closing the Loop

ID: AGILE-US-STAKEHOLDERS-EVALUATION-01

- Req: After deployment, a story should be reviewed to see if it delivered the expected result.
- Resp: This should probably fall to the business analyst or product manager.
- Proc: Ask: Is the new functionality used? Does it deliver the anticipated benefit?
- Cpt: Possible Outcomes.
  - The benefit was wrongly identified initially (story should not have been built).
  - The work was insufficient and needs more effort to realize the benefit.
- Res: This evaluation creates another feedback loop, allowing the team to calibrate and improve the story prioritization process.

## 11. Estimating Business Value

ID: AGILE-US-VALUE-ESTIMATION-02
Purp: To describe a collaborative, estimation-based method for assigning business value to user stories.

### 11.1. The "Shark Tank" Analogy

ID: AGILE-US-VALUE-ESTIMATION-SHARK-TANK-01

- Mdl: A role-playing game based on TV shows like *Shark Tank* or *Dragon's Den*.
- Cpt: Roles.
  - Entrepreneurs (Product Owner) pitch user stories.
  - Investors (stakeholders, developers) ask questions and "invest".
- Cpt: Process.
  1. A benchmark story is assigned a value (e.g., 1,000 "American Shillings").
  2. The PO pitches a new user story.
  3. Investors ask questions about monetization, customers, market, etc.
  4. Investors use planning poker cards (Fibonacci sequence) to secretly vote on the relative value of the story compared to the benchmark.
  5. The host announces the average value, and the story is placed on a wall, creating a value-based priority list.
- Cpt: Dynamic Nature.
  - Ctx: The conversation generates new ideas, leading to new stories being written and pitched on the fly.
  - Ctx: Planned stories may be discarded based on investor interest.

### 11.2. The Value of Estimation over Analysis

ID: AGILE-US-VALUE-ESTIMATION-BENEFITS-01

- Fnd: Simple estimation can be used for value, just as it is for effort.
- Cpt: Benefits of the Game.
  - Sidesteps problems of formal analysis by using a fantasy currency and relative estimation.
  - It is quick, and disputes are handled face-to-face.
  - The conversations are often the most interesting outcome.
  - POs become animated when pitching.
  - Role-playing frees participants from normal office etiquette to critique ideas.
  - It's fun.
- Cpt: Outcomes.
  - A value-based priority list.
  - A better understanding for everyone of what is being built.
- Rec: It makes sense to do this exercise early in development, with epic-type stories, before they are broken down in detail.

### 11.3. Results of Value Estimation

ID: AGILE-US-VALUE-ESTIMATION-RESULTS-01

- Rec: Every story should have a value estimate attached before asking for effort estimates.
- Cpt: Benefits of the "Shark Tank" exercise.
  - Cpt: Conversation.
    - Res: The exercise is a form of war-gaming that exposes assumptions, expands requirements, and identifies opportunities.
  - Cpt: Prioritization.
    - Res: The team gets a first cut at prioritization based on the highest value.
  - Cpt: Flexibility.
    - Res: The spread of values makes it easy to slot new stories into the sequence without renumbering the entire backlog.
  - Cpt: Cost-Benefit Analysis.
    - Res: With value points on the card, teams can engage in meaningful cost-benefit analysis and trade-offs.

## 12. Effects of Time on Value

ID: AGILE-US-TIME-VALUE-01
Purp: To analyze how the dimension of time affects the perceived value of user stories and development decisions.

### 12.1. The Problem of Siloed Analysis

ID: AGILE-US-TIME-VALUE-SILOS-01

- Ex: Bank BA department.
  - Ctx: The head of Business Analysis would not do analysis until architects suggested a solution.
  - Ctx: Architects would not suggest a solution until BAs defined what was wanted.
  - Cause: Each side was attempting to limit its workload by making the other side take on the larger task.
  - Res: A deadlock where nothing would get done.

### 12.2. Value Before Effort

ID: AGILE-US-TIME-VALUE-VALUE-FIRST-01

- Cpt: Common Anti-Pattern.
  - Act: Companies often assign effort estimates before considering value.
  - Cause: Effort estimates are perceived as easier to obtain ("Just ask the developers").
  - Res: Story selection is based on minimum effort or what fits the budget, not maximum value.
- Cpt: The "Cost-Benefit" Fallacy.
  - Ctx: Business representatives ask for cost (effort) to do cost-benefit analysis.
  - Fnd: You can only do cost-benefit analysis if you have estimates for BOTH cost and benefit.
- Cpt: The Anchoring Effect.
  - Warn: Making effort estimates before value estimates creates an anchor.
  - Mech: If a business representative knows a story will take 10 days, they will subconsciously place a value on it greater than the cost of 10 days.
- Req: An assessment of value needs to precede effort estimation.
  - Res: Adding value first makes benefit an engineering constraint.
  - Res: Estimating value second anchors it to the effort estimate.

### 12.3. Engineering Within Constraints

ID: AGILE-US-TIME-VALUE-CONSTRAINTS-01

- Fnd: When benefit analysis happens first, the expected benefit becomes a constraint for the proposed work.
- Mech: Engineers can suggest solutions proportionate to the expected benefit.
- Ex: Online Widget Store.
  - Cpt: Scenario 1 (High Value).
    - Req: Customer expects to turn over $10M/year.
    - Res: Implies a robust, scalable, feature-rich solution.
  - Cpt: Scenario 2 (Low Value).
    - Req: Customer expects to turn over $100k/year.
    - Res: Implies a simpler, perhaps template-based solution.
- Fnd: These are very different engineering problems because the expected benefit constrains the solution.

### 12.4. The Cost of Delay

ID: AGILE-US-TIME-VALUE-COD-01

- Def: The change in value of delivering a solution later.
- Cpt: Shifting from Binary to Analog Deadlines.
  - Ctx: Deadlines are often presented as binary ("must be complete by Dec 1").
  - Mdl: Using value relative to time adds context.
  - Ex: "Delivering x by Nov 1 is worth some money; by Dec 1, a lot of money; and after Jan 1, no money."
- Cpt: Value Decay Profile.
  - Ex: A Santa Claus app.
    - Ctx: Value is low in Sept/Oct, rises sharply in Nov, peaks in Dec, and drops to zero after Christmas.
- Cpt: Prioritization Using Cost of Delay.
  - Cond: Imagine a high-value item with low cost of delay and a low-value item with high cost of delay.
  - Rec: It makes sense to do the low-value/high-cost-of-delay item first to maximize total value captured.
  - Ex: Halloween App vs. Santa App.
    - Ctx: The Halloween app has an earlier, sharper value decay.
    - Act: Develop and release the Halloween app first, then the Santa app.
    - Res: Maximizes overall value, even if the Santa app is delivered slightly later than its peak.
- Req: This analysis requires knowing both the value and how it changes over time.
- Rec: Don't be intimidated by a lack of perfect numbers; estimates are good enough.

## 13. Maximising Return on Investment (ROI)

ID: AGILE-US-ROI-01
Purp: To explain how agile principles, continuous delivery, and value-based prioritization maximize ROI.

### 13.1. Basic ROI Calculation

ID: AGILE-US-ROI-BASICS-01

- Mdl: `ROI = (Gain from Investment - Cost of Investment) / Cost of Investment`
- Warn: This simple calculation is incomplete.

### 13.2. Advanced ROI Modeling

ID: AGILE-US-ROI-ADVANCED-01

- Cpt: Opportunity Cost.
  - Fnd: Other possible uses for the money (e.g., risk-free bank interest) must be considered.
  - Mech: Financial experts "discount" returns against a very safe investment (e.g., government bonds).
- Cpt: The Effect of Time.
  - Fnd: Time reduces the rate of return. Spending money later increases ROI.
  - Ex: An $83k/month investment for a year ($1M total) yielding $1.1M in the final month has a real return of 7.3%, not 10%.
- Cpt: The Effect of Agile Delivery.
  - Fnd: Agile practices increase ROI.
  - Ex: If the same project made monthly releases, the return jumps to 9.73%.
  - Just: Working software is delivered sooner, so benefits (revenue, cost savings) are realized sooner.

### 13.3. Value-Based Prioritization and Continuous Delivery

ID: AGILE-US-ROI-PRIORITIZATION-01

- Cpt: The Problem with Traditional Projects.
  - Ctx: Projects are often treated as all-or-nothing endeavors, stuffed with low-value requirements.
- Cpt: The Agile Solution.
  - Mech: Giving individual stories value allows for cutting unnecessary work and improving project ROI.
  - Fnd: The traditional project model breaks down with cost of delay, ROI thinking, and continuous delivery.
  - Res: Teams deliver high-value stories early. In practice, they embrace new, high-value requests (scope creep) rather than completing all original low-value requirements.
- Cpt: Continuous Delivery.
  - Fnd: Releasing software immediately after it's ready maximizes ROI, minimizes cost of delay, and accelerates feedback.

### 13.4. Story-Level ROI

ID: AGILE-US-ROI-STORY-LEVEL-01

- Fnd: Projects are just big bundles of stories.
- Rec: To boost ROI further, apply value, ROI, and cost of delay analysis at the individual story level.
- Req: This requires a mind shift to think of work in small, individual pieces.

## 14. Writing Stories: Where to Begin?

ID: AGILE-US-WRITING-START-01
Purp: To provide practical models for starting to write user stories and build a backlog.

### 14.1. Backlog Laws

ID: AGILE-US-WRITING-LAWS-01

- Cpt: 1st Law of Backlogs.
  - Def: You don't need a big backlog.
  - Req: In the beginning, there only needs to be enough backlog to get the team started on the next iteration.
- Cpt: 2nd Law of Backlogs.
  - Def: Stories in a backlog are not guaranteed to be built; they are possibilities.

### 14.2. Scenario 1: Solo Brainstorm (Under Pressure)

ID: AGILE-US-WRITING-SOLO-01

- Cond: You are a new PO, the team is ready to start, and there is no existing backlog.
- Proc:
  1. Find out when the first planning meeting is. This is your deadline.
  2. Use the available time for research (analysis, investigation, talking to stakeholders).
  3. Dedicate a few hours just before the meeting for intensive story writing.
- Fnd: Writing a story does not commit you to building it.

### 14.3. Scenario 2: Group Brainstorm (Story Writing Workshop)

ID: AGILE-US-WRITING-GROUP-01

- Mech: Sit down with a group of interested parties and talk about what the system will do, writing stories as you go.
- Rec: It helps to know the overall goal of the work. If unknown, one of the aims should be to uncover it.
- Proc:
  - 1. Identify stakeholders.
  - 2. Prioritize user roles.
  - 3. For the top role, ask "What does this person do with the system?" to generate stories.
  - 4. Either "go deep" on one role or "go broad" across key roles.
- Ctx: Half a day is likely enough to get started. Advanced techniques like Story Mapping or Impact Mapping can be used later.

### 14.4. Scenario 3: Dealing with Existing "Big Requirements Docs"

ID: AGILE-US-WRITING-DOCS-01

- Cond: You are faced with an excess of existing documentation.
- Cpt: The Problem with Documentation.
  - It decays over time as the world changes.
  - It is an imperfect store of knowledge (much remains in the writer's head).
  - It often mixes up the problem and the solution.
  - It can be too voluminous to read and comprehend.
- Cpt: The PO's Decision.
  - Opt-1: Ignore it and use other methods (Solo/Group Brainstorm).
  - Opt-2: Use it. Assume it is useful, up-to-date, and relevant.
- Cpt: The "Salami Slicer" Metaphor.
  - Mech: The PO's job is to slice up the existing documentation into a series of stories that can be fed to the team.
  - Req: Only slice off enough to keep the team busy for the next iteration.

### 14.5. The Evolving Backlog

ID: AGILE-US-WRITING-EVOLVING-01

- Cpt: 3rd Law of Backlogs.
  - Def: Backlogs are never finished.
  - Nat: They will and should continue to grow and change over time.
- Cpt: 4th Law of Backlogs.
  - Def: Backlogs are not comprehensive.
  - Nat: They do not contain all the work or knowledge needed. Knowledge is in people's heads.
- Req: The PO must continuously work the backlog.
  - Act: Keep understanding fresh and up-to-date.
  - Act: Help the team during the sprint.
  - Act: Revisit stakeholders to see how needs are changing.
  - Act: Remove ideas that will not go forward.
  - Act: Evaluate delivered items to see if benefits were realized.

## 15. Backlog Structure

ID: AGILE-US-BACKLOG-STRUCTURE-01
Purp: To discuss different models for structuring backlogs.

### 15.1. The Case Against Backlogs

ID: AGILE-US-BACKLOG-STRUCTURE-AGAINST-01

- Fnd: Some argue backlogs should not exist.
- Just: The pursuit of short cycle time (idea to delivered product) would lead teams to minimize time spent waiting in a backlog.
- Cpt: The Use of Backlogs.
  - Purp-1: Leveling the flow of work (storing work from busy times for quieter periods).
  - Purp-2: Providing a future view of what might be happening.
- Warn: The desire to know the future can lead to backlogs that take years to complete, which is rarely good.

### 15.2. The Two-Backlog Model (Scrum)

ID: AGILE-US-BACKLOG-STRUCTURE-TWO-01

- Mdl: Product Backlog -> Sprint Backlog.
- Cpt: Product Backlog.
  - Def: Contains all items that might be developed for the product (stories, epics).
  - Req: Items should be meaningful and add value to end-users.
- Cpt: Sprint Backlog.
  - Def: Items selected from the product backlog for development in the next iteration.
  - Ctx: May be broken down into tasks.
- Fnd: An item in the product backlog is not guaranteed to be delivered.

### 15.3. The Three-Backlog Model

ID: AGILE-US-BACKLOG-STRUCTURE-THREE-01

- Just: The standard product backlog can become a "wood for the trees" problem, full of too many ideas.
- Mdl: Opportunity Backlog -> Validated Backlog -> Iteration Backlog.
- Cpt: Opportunity Backlog.
  - Def: All ideas that have been suggested.
  - Ctx: Ideas may be crude and unrefined. Recording them is not a commitment.
- Cpt: Validated Backlog.
  - Def: Items from the opportunity backlog that have been researched and are considered valid candidates for development.
  - Req: Items must have clearly identified business benefits (and ideally, value estimates).
  - Req: The validated backlog is deliberately limited in size.
- Cpt: Iteration Backlog.
  - Def: The work to be attempted in the current iteration.
- Cpt: Estimation Flow.
  - Prohib: No effort estimates on items in the Opportunity Backlog.
  - Req: Benefit/value estimation must come before effort estimation. Only items in the Validated Backlog may be estimated for effort.
- Cpt: Planning Horizons.
  - Iteration Backlog -> Near term (e.g., next 2 weeks).
  - Validated Backlog -> Medium term (e.g., next 3 months).
  - Opportunity Backlog -> Long term (e.g., years).

### 15.4. Work Associated with Each Backlog

ID: AGILE-US-BACKLOG-STRUCTURE-WORK-01

- Cpt: Opportunity Backlog Work.
  - Act: Regularly review items. Many will be discarded or postponed.
  - Act: A few items will be explored in detail, benefits assessed, and then either moved to the validated backlog or removed.
- Cpt: Validated Backlog Work.
  - Ctx: These items are likely to be done in the next quarter.
  - Act: Answer open questions and understand details before they are submitted for an iteration.
- Cpt: Iteration Backlog Work.
  - Ctx: These items are currently being worked on.
  - Act: The requirements team must be on hand to answer questions, clarify specs, and keep the work moving.

## 16. Alternatives to User Stories

ID: AGILE-US-ALTERNATIVES-01
Purp: To discuss alternative requirement-capturing techniques and compare them to User Stories.

### 16.1. Attributes of User Stories

ID: AGILE-US-ALTERNATIVES-ATTRIBUTES-01

- Fnd: Before dismissing user stories, consider their key attributes.
- Cpt: Attributes.
  - Lightweight (low upfront cost).
  - Easy to comprehend (no long training course needed).
  - Easy to share (inclusive, breaks down barriers between technical and non-technical people).
- Just: The "easy to share" attribute is what makes User Stories a preferred approach.

### 16.2. Other Formats

ID: AGILE-US-ALTERNATIVES-FORMATS-01

- Cpt: Development Stories.
  - Ctx: Original XP term. No specific format was given, just free-format English on cards.
- Cpt: Product Backlog Items (PBIs).
  - Ctx: The term used in the Scrum Guide instead of User Stories.
- Cpt: Jobs to be Done (JTBD).
  - Ctx: Another alternative format.
- Fnd: The "As a... I want to... So that..." is a language convention, not a law. You are free to use any format that captures who, what, and why.

### 16.3. Use Cases

ID: AGILE-US-ALTERNATIVES-USE-CASES-01

- Rec: If your team uses Use Cases successfully, there is no need to change.
- Cpt: User Story Advantages over Use Cases.
  - Advantage 1: Easier to read, understand, and write. This allows end-users to participate.
  - Advantage 2: Lower learning curve. Easier for everyone on a team to contribute.
- Res: Simplicity encourages interaction and collaboration.

### 16.4. Persona Stories

ID: AGILE-US-ALTERNATIVES-PERSONA-STORIES-01

- Src: Proposed by William Hudson.
- Mdl: "Mary wants to create an account so she can order some goods."
- Mech: Omits the "As a" part but requires personas to be defined in advance.
- Res: Claims to increase developer empathy and understanding.

## 17. Last Words of Advice

ID: AGILE-US-ADVICE-01
Purp: To provide final, practical advice on using user stories effectively.

- Cpt: Keep them Short.
  - Fnd: The original intent of index cards was to deliberately limit space, forcing conciseness and conversation.
  - Warn: Electronic tools remove this constraint, which is a disadvantage.
  - Rec: "Do slightly less than you think is needed."
- Cpt: Break, Don't Bend, the Format.
  - Instr: If a story doesn't fit the format well, don't force it. Write what makes sense.
  - Fnd: The "Who, What, Why" elements are useful, but the exact phrasing is not sacred.
- Cpt: The "So That" Clause.
  - Instr: If you can't come up with a genuine benefit, or if the benefit is obvious, drop the clause.
  - Warn: If most of your stories omit the "so that" clause, re-evaluate if you are delivering real benefit.
- Cpt: Context is Important.
  - Fnd: All stories are context-dependent because they are placeholders for conversations.
  - Warn: It's easy to critique a story out of context. To judge a story, one must understand the context it was written in.
- Cpt: Not an Analysis Technique.
  - Fnd: User Stories were never intended to be a formal analysis technique like Use Cases.
  - Rec: Professionals need to supplement User Stories with appropriate analysis tools.

## Appendix: Requirements and Specifications

ID: AGILE-US-APPENDIX-REQ-SPEC-01
Purp: To differentiate between the terms "requirement" and "specification".

### Appendix.1. Definitions

ID: AGILE-US-APPENDIX-DEFS-01

- Cpt: Requirement.
  - Def: A desired relationship among phenomena of the environment of a system. The problem to be solved.
- Cpt: Specification.
  - Def: Describes machine behavior sufficient to achieve the requirement. It is a restricted, narrowed-down requirement.
- Ex:
  - Req: Store customer details for shipping.
  - Spec: State what details to store (name, address, etc.) and in what format (e.g., post code format).

### Appendix.2. The Iterative Relationship

ID: AGILE-US-APPENDIX-RELATIONSHIP-01

- Fnd: Discovering specifications can lead to changes in requirements. A detail can ripple up to the strategic level.
- Fnd: Code itself is the ultimate specification, but it's a poor communication tool for non-programmers.
- Fnd: Formal specifications (e.g., predicate logic) are also poor communication tools.
- Fnd: Specifications are test criteria.

### Appendix.3. Timing and Automation

ID: AGILE-US-APPENDIX-TIMING-01

- Rec: Decide specifications as late as possible (e.g., in the same sprint as coding) to reduce waste from changes.
- Cpt: Executable Specifications.
  - Def: Using automated acceptance tests (e.g., Gherkin `Given-When-Then`) as the most detailed form of specification.
  - Fnd: BDD/ATDD techniques are the new formal methods, with a lower barrier to entry. They work through examples.
  - Mech: They ensure the program code and the specification match.

### Appendix.4. Knowledge and Trust

ID: AGILE-US-APPENDIX-TRUST-01

- Fnd: Whether detailed specifications are needed often boils down to knowledge and trust.
- Cond: When developers have domain knowledge and are trusted, written specifications can be minimized in favor of just-in-time conversations.
- Cond: When knowledge and trust are lacking, specifications become necessary, as does an automated means of validating code against them.

## Quick User Stories FAQ

ID: AGILE-US-FAQ-01
Purp: To provide quick answers to common questions about user stories.

- Cpt: What is the right size for a User Story?
  - Ans: There is no universal right size. It depends on the team and context.
  - Mdl: Anything that takes more than two weeks is probably too big.
  - Dep: The more a team knows about the domain, the "larger" the request can be (expressed in fewer words).
- Cpt: When is the conversation?
  - Ans: It is not a single event but an ongoing dialogue that starts before planning and isn't over until the story is finished.
- Cpt: How do I determine business value?
  - Ans: Several techniques:
    - - Ask stakeholders for a statement of benefit.
      - Do financial analysis (new revenue, cost savings).
      - Estimate the value (educated guess).
      - Use a "wisdom of crowds" approach like "value poker".
- Cpt: How do I make my User Stories smaller?
  - Ans: Several techniques:
    - - Split on conjunctions (AND, OR, BUT).
      - Refine roles or use personas.
      - Create a separate story for each acceptance criterion.
      - Use story mapping.
      - Talk to others (team, stakeholders, customers).
      - Consider story fidelity (e.g., a "dirt road" version).
- Cpt: When do I use a Story and when do I use an Epic?
  - Ans:
    - - Cpt: Epic. Def: A story that delivers business benefit but is too large to be delivered quickly (e.g., in less than two weeks). It's a placeholder for multiple stories.
      - Cpt: Story. Def: Delivers business benefit and can be delivered quickly.
      - Cpt: Task. Def: Can be delivered very quickly (hours/days) but does not normally deliver business benefit.

### Appendix.5. Conclusion on Requirements and Specifications

ID: AGILE-US-APPENDIX-CONCLUSION-01

- Cpt: Key Takeaways.
  - Ctx: Often there is little point in differentiating between Requirements and Specifications.
  - Res: Distinguishing between them can add to understanding.
  - Proc: Requirements are best given at the start of an iteration, but specifications can be discovered within it.
  - Warn: Requirements are unavoidably imprecise; specifications should not be.
  - Mech: Discovering specifications can lead to changes in requirements.
  - Fnd: Specifications are test criteria and can be formalized as executable tests.

### Appendix.6. References

ID: AGILE-US-APPENDIX-REFERENCES-01

- Cpt: Referenced Works.
  - Src: Cohn, M. 2004. User Stories Applied, Addison-Wesley.
  - Src: Jackson, M. & Zave, P. 1995. Deriving specifications from requirements: an example.
  - Src: Jones, C. 2008. Applied Software Measurement, McGraw Hill.
  - Src: Jones, C. B. 1986. Systematic Software Development using VDM.

## Quick User Stories FAQ (Continued)

ID: AGILE-US-FAQ-02
Purp: To provide quick answers to common questions about user stories.

- Cpt: How big should my backlog be before we start coding?
  - Ans: Big enough to keep the team busy for the coming iteration.
  - Warn: Big backlogs are not good; small backlogs are easier to manage and reason about.
  - Ctx: Some POs want a complete backlog for forecasting, but enlightened POs recognize that backlogs evolve.

- Cpt: How do I write strong User Stories?
  - Ans: Practice.
  - Proc:
    - 1. Ensure the role is real; use personas.
    - 2. Understand how the story adds value for the customer.
    - 3. Read others' stories and have yours critiqued.
  - Fnd: No story, no matter how strong, can substitute for a conversation.

- Cpt: When is a User Story ready to go to development?
  - Ans: Now, if it is high enough priority.
  - Ctx: Pre-work (analysis, ACs, estimates) can be helpful but should not block work from starting.
  - Mech: If pre-work is needed but not complete, it can be undertaken as the first task within the iteration.
