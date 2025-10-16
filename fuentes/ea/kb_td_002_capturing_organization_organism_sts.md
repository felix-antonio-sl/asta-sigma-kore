# Artifact: Capturing the Organization Organism

ID: EA-ORGANISM-STS-01
Version: 1.0.0
Status: Draft
Human-Creator: FS
Human-Editor: FS
Model-Collaborator: Cascade
Creation-Date: 2025-10-09
Modification-Date: 2025-10-09
Source: document: ea-organism.md
Ctx: Enterprise Architecture model viewing an organization as an organism.

---
BEGIN_LLM_INSTRUCTIONS

You are an AI agent consuming a Structured Telegraphic Style (STS) artifact. Your primary task is to parse and reason over THIS document with absolute fidelity, using only the rules defined below. This artifact is a self-contained source of truth.

1. Core Objective: Maintain perfect fidelity to the information (`meat`) and structure (`skeleton`). Do not summarize, interpret, or infer information not explicitly present. Prohib: Applying these rules to artifact creation or translation tasks; they are exclusively for consumption.

2. Conceptual Metaphors:
    - `meat`: Essential information, data, and facts. Must be preserved with zero loss.
    - `skeleton`: Logical structure (headers, IDs, lists, tables). This is also `meat` and must be preserved.
    - `fat`: Non-essential verbiage (filler words, rhetoric, stylistic prose). Must be ignored during reasoning as it has no informational value.

3. Lexicon Mode 3. Lexicon Mode & Expansion: This document uses an Abbreviated Lexicon. You MUST treat the following keywords as valid and expand them according to the official STS guide mapping. Expansion: This document uses an Abbreviated Lexicon. You MUST treat the following keywords as valid and expand them according to the mapping below:

- `Act:` ->`Action:`  - `Warn:` ->`Warning:`  - `Cause:` ->`Cause:`  - `Cpt:` ->`Concept:`  - `Cond:` ->`Condition:`  - `Ctx:` ->`Context:`  - `Def:` ->`Definition:`  - `Dep:` ->`Dependency:`  - `Dest:` ->`Destination:`  - `Dln:` ->`Deadline:`  - `Ex:` ->`Example:`  - `Fnd:` ->`Foundation:`  - `ID:` ->`ID:`  - `Instr:` ->`Instruction:`  - `Just:` ->`Justification:`  - `Mech:` ->`Mechanism:`  - `Mssn:` ->`Mission:`  - `Nat:` ->`Nature:`  - `Obj:` ->`Objective:`  - `Proc:` ->`Process:`  - `Prohib:` ->`Prohibition:`  - `Purp:` ->`Purpose:`  - `Ref:` ->`Reference:`  - `Req:` ->`Requirement:`  - `Res:` ->`Result:`  - `Resp:` ->`Responsible:`  - `Src:` ->`Source:`

4. Reference (`Ref:`) Policy:
    - `Ref:` is used for internal cross-references only.
    - It MUST point to an `ID:` that exists within THIS document.
    - You MUST NOT interpret a `Ref:` as a link to an external document or resource.

5. Language Invariance Policy:
    - The `Keywords` in the lexicon are a fixed control vocabulary in English.
    - All `EssentialData` (the content following a `Keyword:`) MUST be preserved in its original language. Do not translate it.

END_LLM_INSTRUCTIONS
---

## Introduction

ID: EA-ORGANISM-INTRO-01
Purp: Define the scope and core concepts of the book.
Dest: Information systems enterprise architects, senior non-technical business managers.

- Cpt: Foundational Questions.
  - Cpt: Why? Def: The reason for doing something.
  - Cpt: What? Def: Defines what will be done.
  - Cpt: How? Def: The methodology to be used.
  - Cpt: When? How much? How long? Who? Def: Project management questions.
  - Cpt: Where? Def: Locates the "what" or the project.
- Cpt: Book Scope.
  - Obj: Focus on the "why" and "what" of enterprise architecture.
  - Prohib: Discussing methodology ("how").
  - Prohib: Discussing project management questions.
- Cpt: Core Analogy.
  - Mdl: An organization is like a living organism.
  - Cpt: Internal Workings. Def: Analogous to information systems within an organization.
  - Req: Internal mechanisms must adapt as the environment changes for the organism/organization to thrive.
  - Ex: Domesticated felines adapted to housecat life.
  - Ex: Business must adapt to mergers, leadership changes, new technology.
- Cpt: Book Approach.
  - Nat: "Outside-in" approach, considering the external environment.
  - Ctx: Contrasts with traditional "inside-out" EA approach.
- Cpt: Book Objectives.
  - Obj: Describe an organizational structure common to all organizations.
  - Obj: Use data subject areas to describe what is internal and external.
  - Obj: Describe connections between external and internal, and how change is transmitted.
  - Obj: Define a common enterprise architecture of business functions/applications.
  - Obj: Describe how common business application systems must be unique due to different environments.
  - Obj: Discuss integration requirements and AI possibilities in an integrated environment.
  - Obj: Discuss six key questions to understand the organization and its environment.
  - Obj: Provide a high-level map of the organization and its operating environment.
  - Obj: Conclude with a summary of the new EA approach.

## 1. About Enterprise Architecture

ID: EA-ORGANISM-CH1-01
Purp: Define Enterprise Architecture and describe traditional approaches.

### 1.1. EA Definition

ID: EA-ORGANISM-CH1-DEF-01
Fnd: EA is a set of disciplines within Information and Communications Technology (ICT).

- Purp: To examine an organization's information and communication systems.
  - Obj: Understand the required ICT infrastructure to operate effectively (the architecture).
  - Obj: Provide a rational roadmap to acquire and develop that ICT infrastructure (the ICT strategic plan).
- Cpt: Core Recognition.
  - Cpt: Data and information are the lifeblood of an organization.
  - Cpt: Acquiring and deploying the correct ICT infrastructure is costly and complex.
- Def: Enterprise Architecture.
  - Cpt: A rigorous description of the structure of an enterprise.
  - Cpt: Comprises enterprise components, their externally visible properties, and their relationships (behavior).
  - Cpt: Describes terminology, composition of components, relationships with the external environment, and guiding principles for design and evolution.
  - Cpt: Is comprehensive, including goals, processes, roles, structures, behaviors, information, applications, and systems.
- Cpt: Focus of Traditional EA.
  - Nat: Focuses on the internals of an organization, despite describing some interactions with the external environment.
- Def: Organization/Enterprise.
  - Cpt: A complex, socio-technical system.
  - Cpt: Comprises interdependent resources (people, information, technology).
  - Cpt: Resources interact with each other and their environment to support a common mission.
- Cpt: EA Artifacts.
  - Def: Lists, documents, drawings, and models describing the EA.
  - Cpt: Produced using analytical tools and techniques (e.g., activity process flows, data models, Use Cases).
  - Cpt: Software tools (CASE) are often used to create these artifacts.

### 1.2. Traditional Approaches

ID: EA-ORGANISM-CH1-TRAD-01
Purp: Briefly review the Zachman and TOGAF frameworks.
Ctx: These are two of the most ubiquitous EA frameworks.

#### 1.2.1. Zachman Framework

ID: EA-ORGANISM-CH1-ZACHMAN-01
Def: A formal, structured way of viewing and defining an enterprise.
Mdl: A two-dimensional matrix.

- Cpt: Dimensions.
  - Cpt: Axis 1 (Columns): Six questions (What, Where, When, Why, Who, How).
  - Cpt: Axis 2 (Rows): Six perspectives/views (Contextual, Conceptual, Logical, Physical, Detailed, Functioning Enterprise).
- Nat: A taxonomy for organizing architectural artifacts.
- Req: Models in each cell are different representations for that view, not successive levels of detail.
- Cpt: Core Questions.
  - What: Data description.
  - How: Function description.
  - Where: Network description.
  - Who: People description.
  - When: Time description.
  - Why: Motivation description.
- Cpt: "Why" Column Focus.
  - Contextual: Organizational Goals.
  - Conceptual: Goal relationships and hierarchies.
  - Logical: Rules constraining processes and entities.
  - Physical: Rule specifications in formal language.
- Cpt: Value Proposition of this Book.
  - Obj: To add value to and complement the Zachman framework, especially the "Why" column, by using an outside-in approach.

#### 1.2.2. TOGAF

ID: EA-ORGANISM-CH1-TOGAF-01
Def: The Open Group Architecture Framework; a comprehensive approach for design, planning, implementation, and governance of an enterprise information architecture.
Nat: Both an architecture framework and a methodology (ADM).

- Cpt: Four Architecture Domains.
  - Cpt: Business Architecture: Defines business strategy, governance, organization, and key processes.
  - Cpt: Applications Architecture: Blueprint for application systems, their interactions, and relationships to business processes.
  - Cpt: Data Architecture: Describes logical and physical data assets and management resources.
  - Cpt: Technical Architecture: Describes hardware, software, and network infrastructure.
- Cpt: Architecture Development Method (ADM).
  - Def: The methodology for developing an EA.
  - Nat: Cyclic, iterative, and tailorable.
- Cpt: Enterprise Continuum.
  - Def: A virtual repository of all architecture assets (models, patterns, descriptions).
- Cpt: Value Proposition of this Book.
  - Obj: To add value to and complement TOGAF, mainly the Business Architecture domain, by using an outside-in approach.

### 1.3. Issues with Traditional Approaches

ID: EA-ORGANISM-CH1-ISSUES-01
Purp: To identify the limitations of traditional, internally-focused EA.

- Cpt: EA Objectives (IT-driven).
  - Obj: Understand the business that IT supports.
  - Obj: Maximize cost-effectiveness of IT investment.
  - Obj: Solve integration challenges.
  - Obj: Predict where IT should be developed to enable business.
- Cpt: EA Objectives (Business-driven).
  - Obj: Propose innovations in business organization/structure.
  - Obj: Centralize or federate business processes.
  - Obj: Improve quality or timeliness of business information.
  - Obj: Justify money spent on IT.
- Cpt: Primary Emphasis.
  - Nat: On the internals of the business.
  - Mdl: Like an MRI scan that ignores the organism's environment.
- Cpt: Core Ambition Failure.
  - Cpt: The predictive ambition of EA is bound to fail.
  - Cause: EA currently looks almost exclusively at the internals of an organization.
  - Mdl: Examining a cat's internal anatomy tells little about its environment, its behavior in that environment, or why it behaves that way.
  - Res: Insufficient data to manage change effectively; changes are based on guesses and can be expensively wrong.
- Req: For EA to be effective in prediction and managing change.
  - Req: Must know the anatomy of the organization.
  - Req: Must observe and get facts about the environment the organization operates in.
  - Req: Must understand its behavior with respect to that environment.
  - Req: Must understand what is likely to change and how that will impact behavior and internal components.
- Cpt: New Mandate.
  - Instr: Treat the organization as an organism operating within an environment.
  - Instr: Study the organism within its environment, its behavior, its outputs, its inputs, and its interactions.

## 2. Organization as an Organism

ID: EA-ORGANISM-CH2-01
Purp: To explain the concept of the organization as an organism by analogy, providing a new focus for EA.
Fnd: "At the heart of complexity lies simplicity. At the heart of simplicity lies complexity."

### 2.1. The Cat Analogy ("Meow")

ID: EA-ORGANISM-CH2-ANALOGY-01
Purp: To establish core principles of organism-environment interaction using a cat as a model.

- Cpt: Cat's Nature.
  - Nat: Carnivorous animal, hunter.
  - Req: Must eat meat to survive.
  - Cpt: Adaptations for hunting (claws, teeth, sensors, camouflage).
  - Cpt: Learned behaviors (stalking).
- Cpt: Environmental Exchange.
  - Cpt: Input from environment: Small animals (food).
  - Cpt: Output to environment: Culling service (natural stabilizer).
- Cpt: Three Major Principles Established.
  - 1. Cpt: The organism provides an output to its environment.
  - 2. Cpt: The organism takes an input from its environment for survival and to produce outputs.
  - 3. Cpt: The organism interacts with its environment (e.g., compliance like growing fur, finding living space).
- Cpt: Competition.
  - Cpt: Faces direct and indirect competition within its environment.
  - Cpt: Forms of Competition.
    - Competition for input sources (food). Ex: Other cats, hawks.
    - Competition for output services (culling). Ex: Too many carnivores for the available prey.
    - Competition for other resources. Ex: Living space, water sources.
- Res: Predictive Capability.
  - Cpt: Studying the environment and behavior of the organism provides better predictive capability for managing change.
  - Just: Without knowledge of the environment, any answer to a change scenario (e.g., water scarcity) would be pure guesswork.

### 2.2. Outputs and Inputs of an Organization

ID: EA-ORGANISM-CH2-OUTPUTS-INPUTS-01
Purp: To apply the three principles from the cat analogy to an organization.

- Cpt: Application of Principles.
  - 1. Cpt: The organization provides one or more outputs to its environment. Def: These are the organization's products.
  - 2. Cpt: The organization takes input from its environment to produce products and survive. Def: These are the organization's supplies.
  - 3. Cpt: The organization interacts with its environment. Ex: Compliance with regulations, establishing a customer base.
- Cpt: Major Environmental Interactions.
  - Cpt: Products.
  - Cpt: Customers for those products.
  - Cpt: Supplies it uses.
  - Cpt: Suppliers for those supplies.

#### 2.2.1. Outputs (Products)

ID: EA-ORGANISM-CH2-PRODUCTS-01
Purp: To define organizational outputs.

- Def: Product.
  - Cpt: Anything (tangible object or intangible like information) or service (activity) supplied by one entity to meet a want or need by another entity.
- Cpt: Product-Customer Relationship.
  - Req: The existence of a product implies the existence of at least one customer (past, present, or future).
  - Cpt: A product is not a product without a consumer.
  - Warn: The reverse is not necessarily true; a customer does not guarantee a product.
- Cpt: Service as a Product.
  - Cpt: A service is a type of product.
  - Ex: The cat provides a population control service.
  - Ex: Lawyers and doctors provide professional services.
  - Ex: A service can be included with an object to form a complete product package (e.g., installation service for a broadband connection).
- Cpt: Product Pricing and Cost.
  - Cpt: There is always a price for a product, even if not paid directly by the customer.
  - Ex: A volunteer society's food aid is funded by grants or donations.
  - Ex: A government's defense service is paid for by taxes.
- Cpt: Product Packaging.
  - Cpt: Product packages are more common than single items/services.
  - Def: A combination of multiple products (tangible or intangible) sold as one.
  - Ex: A washing machine purchase includes delivery, installation, and warranty services.
- Warn: Definition Conflicts.
  - Cause: Organizations may have internal conflicts in defining what their products are and what packages include.
  - Ctx: EA practitioners must be aware of these potential conflicts.

#### 2.2.2. Customers

ID: EA-ORGANISM-CH2-CUSTOMERS-01
Purp: To define the concept of a customer.

- Def: Customer.
  - Cpt: Consumes the products an organization provides.
  - Cpt: May not necessarily pay money for the product.
  - Cpt: The term includes "client" and "stakeholder".
- Cpt: Customer Grouping.
  - Mech: Grouping customers into markets and market segments.
  - Purp: Provides information about customer preferences, product interests, and the operating environment.
  - Ex: A food aid organization dividing "customers" by level of need.
- Cpt: Extended Customer Classification.
  - Cpt: Some organizations classify non-customers as "potential" or "suspect" customers.
  - Warn: This can lead to conflicts in the definition of a customer. EA practitioners should be aware.
- Cpt: Supply Chain Context.
  - Cpt: One organization's output (product) is often another's input (supply).
  - Ex: Iron ore (mine) -> Steel (manufacturer) -> Car (vehicle company).
  - Def: Supply Chain. A series of inputs and outputs linking organizations.
  - Req: Supply chain logistics are an important environmental consideration for EA.

#### 2.2.3. Inputs (Supplies)

ID: EA-ORGANISM-CH2-SUPPLIES-01
Purp: To define organizational inputs.

- Def: Inputs (Supplies).
  - Cpt: What an organization uses to produce its outputs.
  - Cpt: Can include products from other organizations, services from individuals, and owned/leased resources (machinery, premises).
- Def: Suppliers.
  - Cpt: Organizations or people providing inputs.
- Cpt: People as Input Providers.
  - Cpt: A person entity behaves like an organization, providing services as a product and taking compensation as input.
  - Warn: For the scope of this book, "resource" and "supplier" artificially exclude people working for the organization.
  - Just: 1. Simplifies the EA discussion and scope. 2. People are not equivalent to other resources like machines.
- Cpt: Examples of Inputs.
  - Ex: Vehicle manufacturer uses sheet metal, components, and paint.
  - Ex: Bank "buys" money from depositors and "sells" it as loans.
  - Ex: Legal firm uses input from its lawyers to provide service products.
  - Ex: All organizations use inputs like premises, equipment, and administrative effort (indirect costs).

### 2.3. Environmental Interactions

ID: EA-ORGANISM-CH2-INTERACTIONS-01
Purp: To describe other major types of interactions an organization has with its environment.
Cpt: Beyond inputs and outputs, three major types exist: events, business arrangements, and locations.

- Cpt: Event.
  - Def: Anything that happens, is outside the organization's control, and to which the organization must respond with an activity.
  - Ex: A customer order; a payment; a lightning strike damaging equipment; an illegal act by personnel.
  - Cpt: Events can be triggered by activities, and activities can be undertaken to avoid or reduce the probability of events.
- Cpt: Business Arrangement.
  - Def: Any agreement, contract, law, standard, or similar device that guides or defines an organization's behavior.
  - Ex: A supply contract; stock exchange reporting requirements; a product warranty; ISO 9000 standards; barcoding standards.
  - Cpt: Can force inclusion/exclusion of products in a package.
  - Cpt: Changes in business arrangements are a substantial proportion of environmental changes.
- Cpt: Location.
  - Def: A place in three-dimensional space.
  - Cpt: The physical location of the organization affects its customer base, product distribution, and supply chain.
  - Cpt: Changes in supplier or customer locations can affect market base and logistics.
  - Ex: Expanding to remote sales via a web store requires internal changes and consideration of business arrangements in other locations (laws, taxes).

### 2.4. Competition

ID: EA-ORGANISM-CH2-COMPETITION-01
Purp: To define competition as a factor in environmental interaction.

- Def: Competition.
  - Cpt: A contest between organizations for limited customers or input requirements.
- Cpt: Levels of Economic (Output) Competition.
  - 1. Cpt: Direct Competition. Def: Products perform the same function for the same customers.
  - 2. Cpt: Indirect Competition. Def: Products are different but substitutable.
  - 3. Cpt: Budget Competition. Def: Contest for the customer's available funds across a range of different products.
- Cpt: Input Competition.
  - Def: Organizations competing for the input they require to produce their products.
  - Ex: Financial institutions competing for investor funds.
  - Ex: Steelmakers competing for raw materials like iron ore.
- Cpt: Internal Competition.
  - Cpt: Some organizations promote competition between different internal parts.

### 2.5. Feedback Loop

ID: EA-ORGANISM-CH2-FEEDBACK-01
Purp: To define the role of information feedback for an organization.

- Def: Feedback.
  - Cpt: Information back into the organization about its environment.
  - Ex: Product performance, customer preferences, sales volumes, competitor prices.
- Purp: Enables the organization to judge its performance and effectiveness, and adjust its behavior accordingly.
- Req: Any EA must carefully consider these feedback loops.
- Cpt: Nature of Feedback Information.
  - Cpt: Consists of structured data (providing meaning) and unstructured data (e.g., comments).
  - Cpt: Structured Data. Nat: Objective, comprehensive.
  - Cpt: Unstructured Data. Nat: Subjective, selective, anecdotal, but provides more rapid feedback.
- Mdl: Barefoot in a dark room analogy.
  - Cpt: Stepping on a soft, furry object (unstructured, immediate data) leads to an instinctive jump (fast, potentially incorrect reaction).
  - Cpt: Turning on a light to see it's a dog toy (structured, delayed data) leads to a rational response (pushing it aside).
- Res: The type of data collected from the environment (structured vs. unstructured) can lead to different organizational reactions.

## 3. Basic Concepts -- What is DONE

ID: EA-ORGANISM-CH3-01
Purp: To introduce the key factors that form the basis of the organization-environment interaction.

- Cpt: Summary of Key Factors.
  - Cpt: Products: Main outputs, reason for existence.
  - Cpt: Customers: Consumers of products, can be segmented into markets.
  - Cpt: Suppliers: External providers of inputs needed to make products.
  - Cpt: Resources: Things the organization uses to operate (premises, computers, tools). Excludes people for this model.
  - Cpt: Events: Things that happen (internal or external) to which the organization must respond.
  - Cpt: Activities: Things the organization does, often in response to events. A structured series is a process.
  - Cpt: Business Arrangements: Formal/informal devices (agreements, laws, standards) that guide behavior.
  - Cpt: Locations: Physical places of the organization, customers, and suppliers.
  - Cpt: Competition: Contest for customer spend or for required inputs.
  - Cpt: Information: Feedback (structured/unstructured) vital for success.
- Cpt: Party Model.
  - Rec: Model customers, suppliers, and individuals as a single "Party" entity.
  - Just: An entity appears once but can have multiple roles (customer, supplier), providing a richer picture.

### 3.1. Structure

ID: EA-ORGANISM-CH3-STRUCTURE-01
Purp: To introduce a near-universal functional structure for organizations.

- Mdl: Three-plus-one model.
  - Cpt: Three "horizontal" functional layers.
  - Cpt: One "vertical" business management layer that intersects all three.
- Cpt: Applicability.
  - Cpt: Fits nearly every type of organization (banks, manufacturing, government, medical, non-profit).

#### 3.1.1. The Three Horizontal Layers

ID: EA-ORGANISM-CH3-LAYERS-01
Def: The core operational functions of an organization.

- Cpt: Layer 1: Customers and Products ("The Shop").
  - Purp: Deals with products provided to customers and interaction with the customer.
  - Cpt: Functions.
    - Marketing: Market research, product promotion.
    - Sales: Convincing a customer to buy, completing the transaction.
    - Customer Service: Providing positive interaction before, during, and after sales to enhance satisfaction and retention.
    - Product Management: Researching needs, setting pricing, defining quality requirements, and establishing rules for product packaging.
  - Nat: The "customer facing" component, interacts significantly with the external environment.
- Cpt: Layer 2: Product Development and Build ("The Factory").
  - Purp: Assembling, manufacturing, or otherwise making the product.
  - Cpt: Functions.
    - Research: Systematic investigation to expand knowledge for new or enhanced products.
    - Development: Engineering the research output into a finished, marketable product.
    - Production: Actually making or building the product or delivering the service.
  - Nat: The "engine room," highly sensitive to changes in organizational effectiveness and environment.
- Cpt: Layer 3: Supplies and Suppliers ("The Warehouse").
  - Purp: Obtaining necessary inputs to run the organization.
  - Nat: A mirror image of the "Shop" layer, with the organization in the role of a customer.
  - Cpt: Functions.
    - Shopping: Researching/finding supplies and suppliers (input-side market research).
    - Purchasing: Buying the organization's input requirements.
    - Supply Chain Management: Negotiating and arranging with the supplier network for efficient and timely provision of inputs.
    - Delivery, Storage, and Distribution Management: Ensuring inputs are available where and when needed (e.g., JIT delivery, minimal stock).
  - Nat: The "mine," obtaining and storing raw materials.

#### 3.1.2. The Vertical Layer: Business Management

ID: EA-ORGANISM-CH3-MANAGEMENT-01
Purp: To define the pervasive management layer.
Mdl: Orthogonal to the three horizontal layers, like time is to spatial dimensions.

- Def: Management.
  - Cpt: The function of coordinating people, processes, and resources towards a predefined goal.
- Cpt: Five Basic Functions of Management.
  - 1. Planning: What needs to be done and how.
  - 2. Organizing: Arranging and coordinating people and resources.
  - 3. Staffing: Hiring people.
  - 4. Leading: Directing and motivating people.
  - 5. Monitoring: Checking progress against goals.
- Cpt: Administration Support Functions.
  - Cpt: Payroll, Recruitment, Finance, Information Technology, Assets, General Administration.
- Cpt: Monitoring and Reporting.
  - Fnd: Key to the success of the other four management functions.
  - Cpt: Monitoring focus depends on management level and location (internal vs. external).
  - Proc: Gather data -> Format into information -> Examine -> Determine required actions (reactions).
  - Res: Forms the final part of the feedback loop.
- Cpt: Monitoring Analogy.
  - Mdl: A cat's brain monitors internal processes (digestion) and external factors (smell of tuna).
  - Purp: Monitoring provides the organization with its window on the world (external) and a mirror on itself (internal).
- Cpt: "Outside-In" View.
  - Cpt: The view of the organization as others see it.
  - Cpt: Has become more important with market analysis methods like Porter's Five Forces and PESTEL.
- Cpt: Purpose of Monitoring.
  - Cpt: Internal Monitoring: Allows control and adjustment of internal processes and conditions.
  - Cpt: External Monitoring: Allows adjustment of behavior within the environment to become more successful.

- Cpt: Reactions.
  - Def: The "do something" step in response to feedback from monitoring to close the loop.
  - Proc: Reaction Process.
    - 1. Assess monitored data.
    - 2. Interpret the data.
    - 3. Define risks presented by the data.
    - 4. Identify possible solutions and remedial actions.
    - 5. Identify risks, costs, and benefits of solutions.
    - 6. Choose the best solution/action.
    - 7. Undertake the chosen action.
    - 8. Monitor for results (restarts the cycle).
  - Ex-1: Tax Miscalculation.
    - Event: Government tax audit reveals incorrect tax calculation due to a system algorithm error.
    - Reaction: Pay back taxes, run a press advertisement explaining the issue and corrective actions.
    - Feedback: Monitor the outcome of the advertising campaign.
  - Ex-2: Marketing Campaign.
    - Event: Market research identifies potential customers unaware of the shop.
    - Reaction: Launch a targeted marketing campaign with defined success criteria (new sales from the target category). Modify sales system to collect necessary data.
    - Feedback: Monitor the new sales data to ascertain campaign success.

- Cpt: Reconfiguration.
  - Def: To re-organize, re-structure, and reconfigure the organization to operate more effectively.
  - Cause: Adverse monitoring outcomes, mergers/takeovers, splitting, or perceived under-performance.
  - Cpt: Impact on EA.
    - Cpt: Impacts both internal-facing and external-facing portions of the EA.
  - Rec: Guiding Principles for Reconfiguration.
    - 1. Instr: First, examine the reconfigured organization's external environment (products, customers, suppliers, business arrangements).
    - 2. Instr: Then, consider if the internal ICT supports the organization in its new environment.
    - Warn: Looking only at combining IT systems first is "getting the cart before the horse."
  - Cpt: Change in Ownership.
    - Cpt: A simple change in ownership without changes to the external environment (products, customers) is not a true reconfiguration.

### 3.2. Monopoly Organizations

ID: EA-ORGANISM-CH3-MONOPOLY-01
Purp: To describe the behavior and structure of monopoly organizations relevant to EA.

- Def: Monopoly.
  - Cpt: An organization with enough control over a product to determine access terms; the only practical provider.
  - Cpt: Characterized by a lack of competition and a lack of suitable substitutes.
- Def: Monopsony.
  - Cpt: The only buyer (customer) for a product in an environment.
- Cpt: Behavior and Structure of Monopolies.
  - Cpt: Lowered sensitivity to environmental changes.
  - Cpt: Slower response times to environmental changes.
  - Cpt: Internal processes not optimized for efficiency.
  - Cpt: Reliance on "inside-out" structures, forcing customers to conform.
- Warn: Monopoly organizations are not immune to environmental changes and pressures; their EA must still account for the environment.

### 3.3. Complex Organizations

ID: EA-ORGANISM-CH3-COMPLEX-01
Purp: To describe organizations where a single three-plus-one model is insufficient.

- Mdl: A series of "silos," commonly along product lines, under one overarching Business Management function.
- Cpt: Structure Variations.
  - Cpt: Each silo can have its own administrative support units, functioning as an independent business.
  - Cpt: Administrative support can be centralized and shared from the Group Business Management.
  - Cpt: Individual silos can be listed separately on stock exchanges.
- Fnd: The basic three-plus-one model remains the foundation; complex organizations are multiples or variations of it.

## 4. A New Enterprise Architecture

ID: EA-ORGANISM-CH4-01
Purp: To discuss the development of a new EA that incorporates an external view.

- Cpt: Objectives of the New EA.
  - 1. Obj: Build on the internal view of existing EA frameworks by adding the external environmental view.
  - 2. Obj: Provide links from environmental objects to internal objects to drive change.
  - 3. Obj: Identify possible change vectors for external objects to enable structured prediction of change.
- Res: Benefits of the New EA.
  - Cpt: A method to link internal and external objects.
  - Cpt: A structured method for examining environmental change.
  - Cpt: A more objective prediction of change.

### 4.1. Change

ID: EA-ORGANISM-CH4-CHANGE-01
Purp: To outline a structured approach for evaluating future change.
Warn: Without a structured approach, evaluating change is just guesswork.

- Proc: Approach to Analyzing Change.
  - 1. Break the large problem of change into smaller problems.
  - 2. Consider each external environmental object/factor separately.
  - 3. Link the external object to internal objects.
  - 4. Determine how the environmental object may change (the change vector).
- Cpt: Change Vector.
  - Def: What the change may be and the direction of change.
- Cpt: Advanced Methods.
  - Rec: Can apply probability and statistical methods (e.g., Monte Carlo) to determine change vectors.
  - Just: Useful for modeling phenomena with significant uncertainty in inputs.
- Res: This approach provides a better understanding of the environment, how it may change, and what that signifies for the organization's internals and EA.

### 4.2. Standard Model

ID: EA-ORGANISM-CH4-MODEL-01
Purp: To introduce the standard data subject area model for all organizations.
Ctx: The model is illustrated in Figure 7 of the source document.
Fnd: While detailed data models vary, the subject areas enveloping them remain the same for every organization.

### 4.3. Party

ID: EA-ORGANISM-CH4-PARTY-01
Purp: To explain the "Party" concept in data modeling.

- Def: Party.
  - Cpt: A generic concept representing a person, an organization, or a work group.
- Just: The same person or organization can play multiple roles (customer, supplier, employee). Modeling them as a generic "Party" avoids data duplication.
- Mdl: Ideal Solution.
  - Cpt: A single, non-duplicated database of persons and organizations, each playing roles, shared between business applications.
- Cpt: Reality.
  - Warn: We do not live in an ideal world. Popular COTS products usually do not come with shareable Party databases.
  - Cpt: This book assumes the reality of separate customer, employee, and supplier systems, leading to duplication and synchronization problems.

### 4.4. Environmental Entities

ID: EA-ORGANISM-CH4-ENV-ENTITIES-01
Purp: To describe the environmental entities that are important containers for change factors.

#### 4.4.1. Products

ID: EA-ORGANISM-CH4-PRODUCTS-01
Purp: To define products and their attributes within the new EA.

- Fnd: Products are the reason an organization exists.
- Cpt: Demand.
  - Cpt: The success of products is governed by demand, which is defined by customers.
  - Cpt: Shifting demand is the most common environmental change an organization experiences.
  - Warn: Traditional EA practitioners rarely model products beyond minimal attributes like price.
  - Req: The new EA must pay close attention to products and demand.
- Def: Product (EA Context).
  - Cpt: An object, service, or intangible that an organization makes from inputs, adding value through its resources and activities.
- Cpt: Demand (Economics Context).
  - Cpt: The quantity of a product that can be sold.
  - Cpt: Is a factor of: price, customer's willingness/ability to buy, and time period.
  - Cpt: In EA, demand is derived from attributes of Customer, Product, and the Customer Order event.
- Cpt: Product Type vs. Product Instance.
  - Cpt: Product Type: The definition in the product catalog.
    - Attr: Identification (make, model, description).
    - Attr: Price (cost, list, floor, special).
    - Attr: Product Packaging (comprises sub-products and features).
  - Cpt: Product Instance: The individual product a customer owns.
    - Attr: Identification (serial number, service date/time).
    - Attr: Price at which it was sold.
    - Attr: Date and time of sale.
- Cpt: Component Sub-Product vs. Product Feature.
  - Def: Sub-product: Can be sold separately (e.g., a spare part).
  - Def: Feature: Cannot be sold separately (e.g., color).
  - Warn: Both can be priced separately within a package.

#### 4.4.2. Customers

ID: EA-ORGANISM-CH4-CUSTOMERS-01
Purp: To define customers and their attributes.

- Fnd: An organization would cease to exist without customers.
- Def: Customer.
  - Cpt: A Party (person or organization) that interacts with the organization through its Products.
  - Cpt: Includes the purchaser, the end user, and any other party with an interest in the product.
- Cpt: Common Attributes.
  - Attr: Identification: Separates customers into individuals/organizations.
  - Attr: Location: Physical addresses, important for distribution channels.
  - Attr: Demographics: Age, gender, education, employment status.
  - Attr: Ability to purchase: Customer's available income.
  - Attr: Propensity to purchase: Customer's requirement or desire for the product.
- Warn: Most EAs stop at identification and location, ignoring the last three attribute groups which most directly impact the organization.

#### 4.4.3. Suppliers and Items Supplied

ID: EA-ORGANISM-CH4-SUPPLIERS-01
Purp: To define suppliers, supplies, and their attributes.

- Fnd: Without products from suppliers, organizations would have no products of their own.
- Cpt: Common Attributes of a Supplier.
  - Attr: Identification.
  - Attr: Location: Impacts logistics and supply-chain.
  - Attr: Capacity to supply: Financial viability, dependency, legal status, ethics.
- Cpt: Common Attributes of Items Supplied.
  - Attr: Prices: Including exchange rates and logistics costs.
  - Attr: Maximum quantities able to be supplied.
  - Attr: Lead times for re-order.
- Req: Alternative/equivalent supply items and their suppliers should also be modeled.
- Req: Financial supplies (loans, overdrafts) and their suppliers must be considered as they can generate change.

#### 4.4.4. Business Arrangements

ID: EA-ORGANISM-CH4-BIZ-ARRANGE-01
Purp: To define business arrangements and their attributes.
Fnd: A change to any business arrangement will create major changes for the EA.

- Cpt: Types of Business Arrangements.
  - Cpt: Legal: Laws the organization must comply with.
  - Cpt: Agreements: Formal (contracts) or informal (verbal commitments).
  - Cpt: Customer accounts: Agreements to pay later.
  - Cpt: Standards: Technical, behavioral, or process norms establishing baseline quality.
  - Cpt: Commonly accepted practices: Voluntary codes of conduct, implied behavior ("fit for purpose").
  - Cpt: Shares and financial interests: Creates an arrangement between the organization and investor.
- Cpt: Common Attributes.
  - Attr: Identification: Parties who agreed to and are affected by the arrangement.
  - Attr: Location: Where parties are located and where the arrangement applies.
  - Attr: Subject matter: What the arrangement pertains to in the EA.
  - Attr: Time: Start and finish dates.

#### 4.4.5. Events

ID: EA-ORGANISM-CH4-EVENTS-01
Purp: To define events and their attributes.
Fnd: Events are the main environmental occurrences to which organizations must respond.

- Cpt: Event Type vs. Event Instance.
  - Cpt: Event Type: Description of a potential event.
  - Cpt: Event Instance: An event that has actually happened.
- Cpt: Classes of Events.
  - Cpt: Customer events: Orders, payments, complaints, change of address.
  - Cpt: Supplier events: Invoices, supply chain impacts.
  - Cpt: Product events: Unexpected defects (e.g., battery fire).
  - Cpt: Resource events: Water damage in a warehouse, broken machine.
  - Cpt: Human events: Civil unrest, employee accidents.
  - Cpt: Natural events: Fire, storm, flood.
- Cpt: Event Chains.
  - Cpt: Events may trigger other events.
- Cpt: Typical Attributes.
  - Attr: Identification: Event name and type.
  - Attr: Time: Date and time of occurrence; can be a point in time or have a duration.
- Cpt: Typical Attributes (continued).
  - Attr: Probability: The chance of the event type occurring.
  - Attr: Links: Connects the event to other affected entities, activities, or locations.
- Cpt: Event Links.
  - Req: Events should always link to activities (the organization's response).
  - Cpt: Organizations usually have structured responses for common events.
  - Warn: Less common events are often not linked to a structured response, unless a business continuity plan exists.
  - Req: Events should also be linked to other impacted entities (resources, business arrangements, products, customers).

### 4.5. Internal Entities

ID: EA-ORGANISM-CH4-INT-ENTITIES-01
Purp: To describe the internal entities that traditional EAs focus on.
Fnd: The new EA builds on, and does not dismiss, the areas covered by traditional EAs.

#### 4.5.1. Organizational Structure

ID: EA-ORGANISM-CH4-ORG-STRUCTURE-01
Purp: To define organizational structure within the EA context.

- Def: Organizational Structure.
  - Cpt: Grouped around task allocation, supervision, and coordination activities aimed at achieving goals.
  - Cpt: Most are hierarchical.
- Cpt: Sub-classes of Organizational Structures.
  - Cpt: Permanent (formal): Divisions, functional groupings (e.g., "organization units").
  - Cpt: Formal "people responsibility" chains: "A reports to B" diagrams.
  - Cpt: Temporary: Structures for short-term objectives (e.g., project work groups).
- Cpt: Typical Attributes.
  - Attr: Identification: Name of the unit, position, or person.
  - Attr: Location: Physical location and contact details.
  - Attr: Function: Formal function of the unit or title of the person.
  - Attr: Links: Describe hierarchies, matrices, or chains.

#### 4.5.2. Activities

ID: EA-ORGANISM-CH4-ACTIVITIES-01
Purp: To define activities and their attributes.

- Def: Activity.
  - Cpt: Something which people or computer systems do.
  - Cpt: A linked set of activities is a process.
  - Cpt: Can be decomposed into lower-level activities (Work Breakdown Structure).
- Cpt: Basic Types of Activities.
  - Cpt: "Doing" activity: "Do something" (e.g., "Run Project").
  - Cpt: "Decision" activity: A question with a binary answer, leading to branching (a "decision tree").
  - Cpt: Milestone: Marks completion of a series of activities, has no duration.
- Cpt: Activity Triggers and Relationships.
  - Cpt: Can be triggered by other activities or by events.
  - Cpt: Common relationship is "Finish-Start".
  - Cpt: Other relationships: "Start-Start", "Finish-Finish", "Parent-Child".
- Cpt: Activities and Events.
  - Cpt: Some activities are undertaken to avoid adverse events (risk management).
  - Cpt: Some activities are undertaken to encourage certain events (marketing).
- Cpt: Common Attributes.
  - Attr: Identification: Name and type/class.
  - Attr: Duration time: Actual time taken.
  - Attr: Effort time: Work required to complete.
  - Attr: Assignments: People and resources assigned.
  - Attr: Activity links: Relationships to other activities.
  - Attr: Event links: Relationships to triggering/triggered events.
  - Attr: Other links: Relationships to other involved entities.

#### 4.5.3. Resources

ID: EA-ORGANISM-CH4-RESOURCES-01
Purp: To define resources and their attributes.

- Def: Resource.
  - Cpt: Things (not people) the organization uses to carry out its activities. Synonyms: "infrastructure", "asset".
  - Excludes: Input products used to make the organization's output products.
  - Ex: Buildings, vehicles, machinery, ICT.
- Warn: The line between a resource and an input raw material product can be difficult to draw (e.g., leased machinery, electricity).
- Cpt: Typical Attributes.
  - Attr: Identification: Name, type, serial number, make, model.
  - Attr: Source: Manufacturer, vendor.
  - Attr: Location: Current or usual location.
  - Attr: Purpose: Intended use.
  - Attr: Links: Relationships to activities, events, business arrangements, products.

### 4.6. Links

ID: EA-ORGANISM-CH4-LINKS-01
Purp: To explain how links between external and internal entities transmit change.
Fnd: Identifying these links is a key to the new EA.

- Proc:
  - 1. Search for candidate links.
  - 2. Demonstrate how links transmit change.
  - 3. Examine the direction of change (the change vector).

#### 4.6.1. Candidate Links

ID: EA-ORGANISM-CH4-CANDIDATE-LINKS-01
Purp: To define the types of relationships that form links.

- Cpt: Two Basic Types of Relationships.
  - Cpt: Overt Relationships: Can be identified and named (e.g., "Person drives Car").
    - Cpt: Expressed as simple sentences.
    - Cpt: Implemented as common attributes (foreign keys) that act as pointers.
    - Cpt: Have three characteristics: Cardinality (one-to-one, one-to-many, many-to-many), Optionality (must always vs. may sometimes), and Generality (multiple types of relationships like "owns" and "rents").
  - Cpt: Common Value Relationships: Occur because two objects share the same or linked values in an attribute.
    - Ex: Same date of birth; same postal code.
    - Ex: Inverse relationship between product price and customer order probability.
- Cpt: Overt relationships between external and internal entities are the main links that transmit change.
  - Ex: Event (external) triggering Activity (internal).
  - Ex: Business Arrangement (external) governing Activity (internal).

#### 4.6.2. Change Transmission

ID: EA-ORGANISM-CH4-CHANGE-TRANS-01
Purp: To explain the mechanism of change transmission.

- Mech: When the value of an attribute in an external entity changes, and that attribute is related to an attribute in an internal entity, the internal entity will change.
- Cpt: Scenario 1 - The Car Parts Supplier.
  - Ctx: Rapid-stop Brakes supplies Superior-Cars. Superior-Cars is relocating.
  - Change: Location of a major customer changes.
  - Reaction: Rapid-stop proposes opening a new plant in the new location and launching a website to broaden its customer base.
  - EA Indications: Changes to customer location, new branch location, new/changed supplier arrangements, new sales channel, new business processes, new event types, impacted resources.
- Cpt: Scenario 2 - The Government Social Security Department.
  - Ctx: SSD uses a 30-year-old legacy system. A new government is elected and changes product eligibility criteria.
  - Change: New/changed Business Arrangements (legislation).
  - Reaction: SSD proposes an expensive, one-year project to modify the system and retrain employees.
  - EA Indications: Changes to Business Arrangements, Products, and Activities (business processes).
  - Warn: Because of the inflexible legacy IT system, predictable changes are difficult and expensive to implement.

### 4.7. Change Vectors

ID: EA-ORGANISM-CH4-VECTORS-01
Purp: To define and quantify the direction of change.

- Def: Change Vector.
  - Cpt: Describes both what will change and how (in which direction) it will change.
- Req: It is useful to quantify the change vector (how much will change).
- Cpt: Example 1 - ABC Inc.
  - Ctx: ABC has a steady customer base in a specific area but knows "previous" customers who moved away would still buy if the store were closer.
  - Change Vector: Driven by Customers and Locations. ABC wants to bring its Products to the new Locations of its previous Customers.
  - Missing Data: How many "previous" customers exist in this category to justify a new outlet or e-store.
- Cpt: Example 2 - Howes Bus Service.
  - Ctx: Bus service is only profitable during rush hours.
  - Change Vector: Driven by Products, Locations, and Customers. By changing the Product (on-demand pickup) and offering it in slightly different Locations, Howes hopes to gain more Customers in a different time period.
- Res: These actions are typical of dynamic businesses, and the EA must reflect this for IT systems to be successful. Change vectors are a primary consideration for EA.

## 5. How to Develop the New EA

ID: EA-ORGANISM-CH5-01
Purp: To explain how to use the new concepts to assemble a dynamic EA that can cater for and predict change.

- Proc: Development Approach.
  - 1. Instr: Identify internal and external entities.
  - 2. Instr: Identify relationships (common value and overt) between them, expressed through attributes.
  - 3. Cpt: Changes to attributes of external entities will have a direct impact on the attributes of internal entities via these relationships.
- Mdl: The discussion will be based on the "three plus one" layered organization model.

### 5.1. EA for Business Management

ID: EA-ORGANISM-CH5-BIZ-MGMT-01
Purp: To define the EA for the "plus one" layer that drives the organization.

#### 5.1.1. Business Intelligence

ID: EA-ORGANISM-CH5-BI-01
Purp: To define the information needs for Business Management.

- Cpt: Three Groups of Information Needed by the "Driver".
  - Cpt: Navigational group: Where the organization is vs. where it wants to be.
  - Cpt: Environmental group: Information about the environment (competitors, road conditions).
  - Cpt: Internal conditions group: Information on performance and internal health.
- Mdl: Five-Layer BI Model.
  - Cpt: Layer 1: Base Objects: Major entities from transaction systems (e.g., Customer, Product, Customer Order event).
  - Cpt: Layer 2: Derived Objects: Grouped abstractions of Base Objects (e.g., "Customer Purchases"). Corresponds to data marts.
  - Cpt: Layer 3: Measuring: Point-in-time values of selected attributes from Derived Objects. The "dashboard".
  - Cpt: Layer 4: Monitoring: Measurement values shown over time ("time series" data) to identify trends.
  - Cpt: Layer 5: Application: Where management uses the information for decision-making.

#### 5.1.2. Operational Systems for Managing the Organization

ID: EA-ORGANISM-CH5-OPSYS-01
Purp: To describe the typical operational systems in the management layer.

- Cpt: General Ledger (GL) System.
  - Purp: Contains Derived Financial Objects.
  - Cpt: Fed by subsidiary systems:
    - Accounts Receivable (AR): Tracks money owed to the organization.
    - Accounts Payable (AP): Tracks money owed by the organization.
    - Assets: Tracks the value of the organization's resources.
- Cpt: Personnel and Payroll System.
  - Purp: Tracks who is employed and manages their pay and related data.

### 5.2. EA for Customers and Product Sales

ID: EA-ORGANISM-CH5-CUST-PROD-01
Purp: To define the EA for the top, customer-facing layer.
Warn: While there are parallels between the top (customer) and bottom (supplier) layers, they should be treated separately due to differing business rules.

- Cpt: Major Data Subject Areas.
  - Cpt: Products.
  - Cpt: Customers (Party in role of customer).
  - Cpt: Customer orders (Event subtype).
  - Cpt: Customer accounts (Business Arrangement type).
  - Cpt: Locations.
  - Cpt: Business arrangements.

#### 5.2.1. Product System

ID: EA-ORGANISM-CH5-PROD-SYS-01
Purp: To define the functions of a Product or Product Catalog system.
Warn: Absence or fragmentation of this system is often due to a lack of clarity on product offerings.

- Cpt: Major Functions.
  - Req: Define anything provided to customers (widgets, services, information) as a product.
  - Req: Distinguish between products (can be sold separately) and features (cannot).
  - Req: Treat product packages the same as single products.
  - Req: Allow nesting of packages within other packages.
  - Req: Allow easy creation of new products and assembly of packages.
  - Req: Allow setting of status (planned, available, out of stock).
  - Req: Allow different price types (cost, retail, wholesale) to be set for all products, features, and packages.
  - Req: Allow creation of one-off ("bespoke") product packages for individual customers.
  - Req: Link to order management, activity management, supplies, warehousing, and business arrangement systems.

#### 5.2.2. Customer System

ID: EA-ORGANISM-CH5-CUST-SYS-01
Purp: To define the functions of a Customer Relationship Management (CRM) system.
Ctx: More than a simple database; records and tracks all customer interactions.

- Cpt: Major Functions.
  - Req: Capture and verify basic customer data securely.
  - Req: Set and change customer status (good, long-term).
  - Req: Link to credit rating data where appropriate.
  - Req: Build organizational and personnel hierarchies for the customer.
  - Req: Record all interactions (phone, personal) and pass promises to an activity system.
  - Req: Link to order management and product systems.

#### 5.2.3. Order System

ID: EA-ORGANISM-CH5-ORDER-SYS-01
Purp: To define the functions of an Order Management system.
Fnd: At the front end of the organization's interaction with a customer.

- Cpt: Major Functions.
  - Req: Link to the product system to select products and pricing.
  - Req: Allow point-of-sale personnel to customize products and pricing within rules.
  - Req: Manage the state of products from "ordered" to "sold".
  - Req: Link to the activity management system to initiate provisioning and track progress via milestones.
  - Req: Set and change order status.
  - Req: Link to the account management and billing system.
  - Req: Link to a Sold Product system to record the product instance details.

#### 5.2.4. Customer Billing System

ID: EA-ORGANISM-CH5-BILL-SYS-01
Purp: To define the functions of a customer account and billing system.
Warn: In some industries (e.g., telecoms), this system becomes overly bloated with other functionality, making it unwieldy and inflexible.

- Cpt: Major Functions.
  - Req: Bill for any product, either as periodic billing or one-off charges.
  - Req: Charge the correct price from a range of price types.
  - Req: Set or change a billing cycle as agreed with the customer.
  - Req: "Roll up" billing statements for customers with multiple accounts.
  - Req: Link to customer, order management, product, activity, and resource systems.
  - Req: Link with the general ledger accounts receivable.

#### 5.2.5. Event System

ID: EA-ORGANISM-CH5-EVENT-SYS-01
Purp: To propose a system for dealing with non-regular events.
Fnd: The system holds the organization's "memory and experience" data.

- Cpt: Major Functions.
  - Req: Record details of the event and the person/organization reporting it.
  - Req: Classify the event against pre-defined event types or create new ones.
  - Req: Link event types to activity type templates to instantiate a planned response.
  - Req: Provide a view of progress through the instantiated activities.
  - Req: Link the reported event to any affected resource, product, customer, supplier, or employee.

### 5.3. EA for Product Development and Build

ID: EA-ORGANISM-CH5-PROD-DEV-01
Purp: To define the EA for the middle layer, the "engine room" or "factory".
Fnd: This tier takes products from suppliers, adds value, and provides products to customers.

- Cpt: Major Data Subject Areas.
  - Cpt: Resources (machinery, vehicles, ICT).
  - Cpt: Activities (what people and systems do).
  - Cpt: Business Arrangements.
  - Cpt: Employees.

#### 5.3.1. Resource System

ID: EA-ORGANISM-CH5-RES-SYS-01
Purp: To define the functions of a resource management system.
Ctx: An inventory of things used to develop or build products.

- Cpt: Major Functions.
  - Req: Describe resources (purpose, capability, cost, maintenance).
  - Req: Assign tasks or products to resources.
  - Req: Set and change the status of each resource (availability, maintenance).
  - Req: Link to events (like breakdowns) that have affected the resource.
  - Req: Link to the activity management system for maintenance activities.
  - Req: Link with the asset system in the general ledger.

#### 5.3.2. Activity System

ID: EA-ORGANISM-CH5-ACT-SYS-01
Purp: To define the functions of an activity or workflow management system.
Fnd: Assists in cost-effectively standardizing processes in response to expected events.

- Cpt: Major Functions.
  - Req: Define individual activity types with details (name, description, effort, cost).
  - Req: Define relationships between activities to form a process flow.
  - Req: Include decision-type activities to allow for branching ("business rules engine").
  - Req: Instantiate activity type chains (processes) based on triggers.
  - Req: Calculate and update start/finish dates for activities in a process.
  - Req: Allow accountable persons to modify processes by inserting/deleting activities.
  - Req: Link to product and customer order systems.
- Cpt: Major Functions (continued).
  - Req: Link to the employees and resources systems for assignments.
  - Req: Allow assigned person to record actual start and finish times.

#### 5.3.3. Business Arrangements System

ID: EA-ORGANISM-CH5-BA-SYS-01
Purp: To define the functions of a Business Arrangement system.
Fnd: A text-based reference database of all agreements.

- Cpt: Major Functions.
  - Req: Store and provide read access to electronic documents (DOC, PDF).
  - Req: Control document versions.
  - Req: Classify documents by type and content.
  - Req: Attach keywords to enable rapid search of unstructured information.
  - Req: Allow documents or parts of documents to be linked to any other object instance in any other system.

#### 5.3.4. Employees System

ID: EA-ORGANISM-CH5-EMP-SYS-01
Purp: To define a system for assignment and management of employees' work.
Ctx: Distinct from the Personnel Payroll system, but linked to it.

- Cpt: Major Functions.
  - Req: Record and synchronize relevant personal details with the Personnel Payroll system.
  - Req: Record employee skills and experience in a structured way.
  - Req: Match employee skills to activity demands.
  - Req: Record and manage employee availability and work times.
  - Req: Link to Activity, Products, Customer, Order, Resources, and Business Arrangement systems to manage assignments and associations.

#### 5.3.5. Manufacturing System

ID: EA-ORGANISM-CH5-MFG-SYS-01
Purp: To define the manufacturing system.
Fnd: The core system where the organization physically builds its product; uniquely tied to each organization.

- Cpt: Nature of the System.
  - Cpt: Can be IT-controlled (telecom networks), a mix of IT and manual (car manufacturing), or exclusively manual (legal services).
- Cpt: Role in EA.
  - Cpt: This component gives an EA its unique identity.
  - Warn: Must be handled with great care and linked to all other systems to complete the EA picture.

### 5.4. EA for Suppliers and Supplies

ID: EA-ORGANISM-CH5-SUP-SUP-01
Purp: To define the EA for the bottom, supplier-facing layer.
Fnd: A mirror image of the top customer-facing layer.

- Cpt: Major Data Subject Areas.
  - Cpt: Supplies (other organizations' products).
  - Cpt: Suppliers (Party in role of supplier).
  - Cpt: Supplier order (Event type).
  - Cpt: Supplier accounts.
  - Cpt: Locations.
  - Cpt: Business arrangements.

#### 5.4.1. Supplies System

ID: EA-ORGANISM-CH5-SUP-SYS-01
Purp: To define the functions of a Supplies system.
Fnd: Basically the top layer's Products system, but for items the organization purchases.

- Cpt: Major Functions.
  - Req: Define any purchased item (physical, service, information) as a supply.
  - Req: Distinguish between supplies and features of supplies.
  - Req: Treat standalone supplies and packages of supplies the same.
  - Req: Allow easy creation of new supply specifications.
  - Req: Link to supplies ordering, supplier, inventory, and business arrangement systems.

#### 5.4.2. Supplier System

ID: EA-ORGANISM-CH5-SPLR-SYS-01
Purp: To define the functions of a Supplier system.
Fnd: More than a database; tracks interactions and other noteworthy details.
Warn: An organization's reputation can be impacted by the reputation of its suppliers.

- Cpt: Major Functions.
  - Req: Capture, verify, and securely update basic supplier details.
  - Req: Link to financial information about the supplier (credit ratings, etc.).
  - Req: Build organizational and personnel hierarchies within the supplier.
  - Req: Record all interactions and link them to the activity management system.
  - Req: Link to supplies ordering, supplies, and business arrangement systems.

#### 5.4.3. Supplies Ordering System

ID: EA-ORGANISM-CH5-SORD-SYS-01
Purp: To define the functions of a Supplies Ordering system.
Fnd: At the front end of interactions with suppliers.

- Cpt: Major Functions.
  - Req: Link to the supplies system to select supplies.
  - Req: Link to the business arrangement system to review contracts.
  - Req: Manage the state of supplies from "ordered" to "completed purchase".
  - Req: Link to warehousing and activity management systems.
  - Req: Set and change order status.
  - Req: Link to the supplier accounts system to initiate payments.

#### 5.4.4. Supplier Accounts System

ID: EA-ORGANISM-CH5-SACC-SYS-01
Purp: To define the functions of a Supplier Accounts system.
Fnd: The accounts payable system for the organization.

- Cpt: Major Functions.
  - Req: Record any supply purchased and recurring supplies.
  - Req: Record correct prices and apply discounts from business arrangements.
  - Req: Be easily auditable with transparency and traceability.
  - Req: Link to supplies ordering, supplier, and general ledger accounts payable systems.

#### 5.4.5. Warehousing and Inventory System (Optional)

ID: EA-ORGANISM-CH5-WH-SYS-01
Purp: To define the Warehousing and Inventory system.
Ctx: Not all organizations need this system, particularly service-only organizations.

- Def: Inventory.
  - Cpt: What supplies are available for manufacturing and what products are available for customers.
- Def: Warehousing.
  - Cpt: Where those supplies and products are located.
- Fnd: Like the manufacturing system, this system is specific to each organization.
- Cpt: Links.
  - Req: Must link with customer/supplies ordering, supplies/product, and manufacturing systems.

### 5.5. Complete Systems Architecture

ID: EA-ORGANISM-CH5-COMPLETE-ARCH-01
Purp: To provide a consolidated overview of the common systems architecture components.
Mdl: Based on the "three plus one" model, inserting the application systems into the tiers.

- Cpt: Environmental Entities (External).
  - Cpt: Products (Organization's), Customers (Party), Events, Locations, Business Arrangements, Supplies (Products), Suppliers (Party).
- Cpt: Internal Entities.
  - Cpt: Activities, Resources, Personnel (Party), Derived Objects.
- Cpt: Conclusions.
  - Cpt: Organizations share similar business applications systems, but manufacturing and warehousing systems are unique.
  - Cpt: Smaller organizations may have manual processes instead of all systems.
  - Cpt: Outsourcing functions can create knowledge gaps.
  - Cpt: Developing an EA is a thorough way to discover and fill these gaps.

### 5.6. More About Change

ID: EA-ORGANISM-CH5-MORE-CHANGE-01
Purp: To provide further examples of using the new EA to deal with the impacts of change.

- Cpt: Example 1 - A New Type of Event (Data Breach).
  - Event: Hackers obtain customer data. No process exists to respond.
  - EA-guided Response:
    - 1. Define the new event type in the Event system.
    - 2. Define a new response process (Activity Type template) in the Activity system and link it to the event type.
    - 3. Use Supplier/Supplies systems to obtain external help if needed.
    - 4. Use the EA map (links from the Customer system) to determine the scope of the forensic investigation.
- Cpt: Example 2 - New or Changed Legislation.
  - Event: New law requires additional tests and labeling for certain consumer items.
  - EA-guided Response:
    - 1. Record the new law in the Business Arrangement system.
    - 2. Link the law to affected supplier contracts to identify suppliers.
    - 3. Notify suppliers of required changes via Supplier/Supplies systems.
    - 4. Check Product and Warehousing systems for existing non-compliant stock.
    - 5. Order new compliant supplies via the ordering systems.

### 5.7. Time Dimension

ID: EA-ORGANISM-CH5-TIME-01
Purp: To discuss how time affects the EA of an organization.
Req: The EA must incorporate methods to deal with changes over time.

- Cpt: Problem with Traditional Techniques.
  - Cpt: Techniques like Entity Life History (ELH) are very much "inside-out".
- Cpt: New Approach Requirement.
  - Req: Examine how environmental entities change over time and design an EA that moves with those changes.
- Cpt: Example 1 - Telecoms Network.
  - Ctx: A fault in a network node triggers a chain of alarm events.
  - Time Impact: Re-configuring the network over time changes the sequence of alarm events, potentially requiring a different response process.
- Cpt: Example 2 - Product Ownership Change.
  - Ctx: A car is sold from customer A to customer B.
  - Time Impact: The current customer for the product changes over time. This affects warranties and recalls. Not tracking this change can lead to problems.
- Cpt: Example 3 - Shares.
  - Ctx: Shares in an organization are traded.
  - Time Impact: The organization must keep records of who owns their shares, and these records must be updated every time shares change hands.

## 6. Implications of the New Approach

ID: EA-ORGANISM-CH6-01
Purp: To discuss the implications of the new EA for different types of organizations.
Fnd: While most organizations share similar business application systems, the required functionality is not the same.

- Cpt: Functionality Varies with Environment.
  - Just: The functionality requirements for a system (e.g., a customer system) are distinguished by the different environments the organizations operate in.
  - Ex: A government social security department needs a customer system that holds deep information (assets, income) and calculates entitlements based on complex rules.
  - Ex: A large retail shop needs a customer system that holds shallow information (name, address) for delivery and warranty.
- Res: These are not "one size fits all" cases.

### 6.1. Implications for Different Organizations

ID: EA-ORGANISM-CH6-IMPLICATIONS-01
Purp: To detail the implications for consumers of applications, COTS suppliers, and IT services companies.

#### 6.1.1. Consumers of Business Applications

ID: EA-ORGANISM-CH6-CONSUMERS-01
Purp: To outline implications for organizations that use business applications.

- Cpt: Similar organizations gravitate towards similar COTS products.
  - Warn: This has advantages (quick start, proven tech) and disadvantages (tied to same capabilities as competitors).
- Req: EA practitioners must understand that competing organizations do not operate in exactly the same environment.
  - Just: To succeed, they must distinguish themselves (different products, pricing, target customers), which means their environments are different.
  - Res: Their systems must have different capabilities to allow them to be successful.
- Cpt: Back-end vs. Environment-facing Systems.
  - Cpt: Business applications that deal with the organization's environment need to be customized.
  - Cpt: Back-end systems like accounting can be standard COTS products as they follow universal rules.

#### 6.1.2. Suppliers of COTS Business Applications

ID: EA-ORGANISM-CH6-COTS-SUPPLIERS-01
Purp: To outline implications for COTS vendors.

- Fnd: Many COTS products were built for organizations that may not operate in the same environment as a potential customer.
- Req: COTS suppliers must understand the environments in which their potential customers operate.
- Req: COTS suppliers must build flexibility into their products so they can be tailored.
- Req: COTS suppliers must provide for integration with other existing systems.
- Res: The "one size fits all" approach is unlikely to be true or provide satisfactory solutions.

#### 6.1.3. IT Services Companies

ID: EA-ORGANISM-CH6-IT-SERVICES-01
Purp: To outline implications for IT services companies.

- Warn: A common problem is proposing a solution based on a customer's stated requirements without a deep understanding of the customer's business, environment, and context.
- Req: IT services companies must understand the three-plus-one architecture and the customer's business environment.
- Res: This understanding provides a competitive advantage and allows the company to add real value.
- Req: Must also give due consideration to integration with the customer's existing application portfolio.

### 6.2. Integration

ID: EA-ORGANISM-CH6-INTEGRATION-01
Purp: To discuss the history and future of application integration.
Fnd: The seamless integration of data and functions across an IT portfolio has long been the holy grail of EA.

#### 6.2.1. A Brief History

ID: EA-ORGANISM-CH6-INT-HISTORY-01
Purp: To trace the evolution of integration techniques.

- Cpt: 1970s - Data Level Integration.
  - Mech: File transfers between applications.
  - Warn: Costly, time-consuming, led to data duplication and format mismatches.
- Cpt: Emergence of Databases.
  - Idea: A single large corporate database (an implementation of the Enterprise Data Model - EDM) supplying data to different systems.
  - Warn: Technically difficult, required huge analysis and design effort, and precluded the use of COTS products.
- Cpt: Late 1980s/Early 1990s - Relational & Distributed Databases.
  - Cpt: Made the corporate database idea more feasible, but still difficult.
- Cpt: Rise of COTS and Object-Orientation.
  - Cpt: Led to a variety of point-to-point technical solutions:
    - Screen scraping: Software reads input screens of another system.
    - Remote procedure calls (RPCs) and wrapper technology: One system calls functionality within another.
    - Database links: One database can view/manipulate data in another.
  - Warn: These solutions had drawbacks, such as bypassing application-level business rules.
- Cpt: Middleware and Enterprise Integration Software (EIS).
  - Cpt: Provided transport and routing for calls between systems to solve point-to-multi-point integration.
  - Cpt: Enabled "single log on" and other security services.
- Cpt: Service-Oriented Architecture (SOA).
  - Cpt: Provided the architectural and intellectual underpinning for EIS.

#### 6.2.2. Service Oriented Architecture (SOA)

ID: EA-ORGANISM-CH6-SOA-01
Purp: To define SOA and its implications.

- Def: Service.
  - Cpt: A process, often encapsulating data, provided by a service provider to a consumer over a communications protocol.
- Cpt: Three Core Components.
  - Cpt: Service broker/registry: An index of available services.
  - Cpt: Service provider: Executes the service.
  - Cpt: Service consumer/requestor: Locates and invokes the service.
- Warn: SOA is not a magic bullet; it requires disciplined governance, careful analysis, and is not cheap or easy to implement.
- Req: Precursors to SOA implementation.
  - 1. An Enterprise Data Model (EDM) with agreed definitions.
  - 2. Mapping the EDM to existing application databases.
  - 3. A set of agreed business services developed (the "common language").
  - 4. Mapping object behaviors to existing applications.
- Fnd: SOA provides a parallel to an organism's internal communication methods (nerve signals).

### 6.3. Artificial Intelligence and Expert Systems in the EA

ID: EA-ORGANISM-CH6-AI-ES-01
Purp: To discuss the current and potential future applications of AI and ES within the EA.

- Cpt: Current Uses.
  - Cpt: In manufacturing, often with robotics (e.g., motor vehicles).
  - Cpt: In finance, for risk assessment on loan products.
  - Cpt: In Business Intelligence suites, to make sense of large data volumes.
  - Cpt: In search, to troll through large holdings of unstructured data.
- Cpt: Two Basic Themes of Development.
  - 1. Entirely replacing humans: Mainly in repetitive work.
  - 2. Supplementing or assisting humans: Search engines, auto-pilots.
- Cpt: Potential Future Advancements.
  - Cpt: More use in the middle (Product Development) and vertical (Business Management) layers.
  - Cpt: Continued use in the bottom (Suppliers) layer, especially for warehousing and JIT.
  - Cpt: Use in the top (Customers) layer to assist with complex interactions.
- Cpt: A Possible Future Deployment.
  - Idea: Use natural language ES/AI to scan news sources (events) for items of interest to the organization, trigger activities, and refer them to the correct manager.
- Res: Good integration between business applications opens major possibilities for deploying ES/AI technologies.

## 7. Non-Obvious Cases

ID: EA-ORGANISM-CH7-01
Purp: To demonstrate how the new EA applies to non-commercial organizations.

- Cpt: Six Key Questions to Define the Environment.
  - 1. What are your products?
  - 2. Who are your customers?
  - 3. What are the business constraints (laws, agreements, standards)?
  - 4. Who are your suppliers?
  - 5. What products do you obtain from them?
  - 6. How does physical location affect your organization?

### 7.1. Defense Forces

ID: EA-ORGANISM-CH7-DEFENSE-01
Purp: To apply the six key questions to a defense force.

- Cpt: Answers to the Six Questions.
  - Products: Almost always services, called a "mission." Each mission is a tailored service product. Standard service components are called "capabilities."
  - Customers: The government of the country is the major customer.
  - Business Constraints: Laws of the country, defense treaties, international agreements, standards of behavior.
  - Suppliers: Two groups: those that supply resources (capital equipment) and those that supply consumables (food, ammunition).
  - Supplies: Everything from planes and tanks to food.
  - Location: Extremely pertinent; affects nearly every logistical aspect of a mission.
- Cpt: Predicted System Needs.
  - Customer System: Unlikely (only one customer).
  - Customer Billing System: Not needed.
- Cpt: Predicted System Needs (continued).
  - Cpt: Product System: Yes, to assemble mission components; analogous to a planning system.
  - Cpt: Order System: Not needed.
  - Cpt: Event System: Yes, to track events impacting the mission.
  - Cpt: Business Arrangements System: Yes.
  - Cpt: Activity System: Yes, likely tied to the Product System.
  - Cpt: Resources System: Yes.
  - Cpt: Employees System: Yes.
  - Cpt: Manufacturing System: Analogous to a "training system" to enable mission delivery.
  - Cpt: All "logistics" systems (Supplies, Supplier, Ordering, Accounts, Warehousing): Yes.
  - Cpt: All "Business Management" systems (Payroll, GL, BI): Yes, with BI being on a comprehensive scale.
- Res: The defense force model fits the standard organizational model outlined in the book.

### 7.2. Government Departments and Agencies

ID: EA-ORGANISM-CH7-GOV-01
Purp: To apply the six key questions to government departments and agencies.

- Cpt: Answers to the Six Questions.
  - Products: Varied. Includes service products (advice to government, revenue collection, law enforcement), infrastructure project delivery, and public services (healthcare, education, social security).
  - Customers: The government itself, and public recipients (pensioners, hospital patients).
  - Business Constraints: Numerous. All operate under enabling legislation.
  - Suppliers: Individuals and organizations, including taxpayers (supplying money) and anonymous sources (supplying information).
  - Supplies: Information and raw data form a large portion. Also money (taxes) and physical goods.
  - Location: Generally of lesser importance, except for service outlets (social security offices, embassies) or infrastructure projects.
- Cpt: Predicted System Needs.
  - Cpt: Highly dependent on the individual department or agency.
  - Ex: A social security department needs a customer system; a treasury department may not.
- Warn: Some government agencies are actually business enterprises (e.g., postal service) and should be treated as such by EA practitioners.

### 7.3. Non-Commercial Organizations

ID: EA-ORGANISM-CH7-NON-COMM-01
Purp: To apply the six key questions to non-commercial organizations like charities and clubs.

- Cpt: Charitable Organizations.
  - Products: Goods and services for individuals in need.
  - Customers: Individuals.
  - Constraints: Special legal provisions for collecting donations.
  - Suppliers: Financial donors, volunteers.
  - Supplies: Financial support, goods, volunteer services.
  - Location: Important for product delivery.
- Cpt: Clubs (including sporting clubs).
  - Products: Services, goods, and use of premises for members.
  - Customers: All members are customers, but not all customers are members.
  - Constraints: Generally incorporated bodies, plus internal club rules.
  - Suppliers: Standard business suppliers, sponsors.
  - Supplies: Standard business supplies (food, beverages, equipment).
  - Location: Generally not of great importance.
- Cpt: Support Organizations (Auxiliaries).
  - Cpt: Closely resemble charitable organizations.
- Res: All these organizations fit the model because they have products, customers, suppliers, and business arrangements. The EA approach described applies to all of them.

## 8. Closing Summary

ID: EA-ORGANISM-CH8-01
Purp: To summarize the essential ideas discussed in the book.

- Fnd: Cornerstones of the book.
  - 1. Cpt: An organization operates within its chosen environment, and EA must support its operations in that environment.
  - 2. Cpt: Changes to the environment impact the EA, so the EA must be flexible enough to adapt.
- Mdl: EA as a Roadmap.
  - Purp: To provide a map to the future of the organization's IT portfolio.
  - Req: A map must allow planning the journey, evaluating the impact of change (e.g., a blocked road), and be updatable.
- Fnd: The book presents key concepts at a "big picture" scale.

### 8.1. Data Subject Areas

ID: EA-ORGANISM-CH8-SUBJ-AREAS-01
Purp: To summarize the concept of the eight data subject areas.

- Cpt: Key Concepts.
  - Cpt: A data subject area is a grouping of a detailed data model on a common subject.
  - Cpt: A single link between subject areas in the high-level model represents all the detailed links below.
  - Cpt: All organizations have the same eight subject areas, regardless of differences in the detailed data models.
  - Cpt: Seven subject areas contain original data; one (Derived Object) contains derived data.
  - Cpt: Every derived object is traceable to original data in the other seven subject areas.

### 8.2. Internal and External Subject Areas

ID: EA-ORGANISM-CH8-INT-EXT-01
Purp: To summarize the division of subject areas into internal and external.

- Cpt: External Subject Areas.
  - Cpt: Party: Customers (external) and Suppliers (external). Treated as external due to their importance, though it can also be internal (employee).
  - Cpt: Product: Offered externally, the main interaction with the environment.
  - Cpt: Event: Happen outside the organization's control.
  - Cpt: Business Arrangement: Govern behavior (laws, contracts, standards).
  - Cpt: Location: A geographic place.
- Cpt: Internal Subject Areas.
  - Cpt: Resource: Things the organization uses (excluding people).
  - Cpt: Activity: Actions carried out within the organization.
  - Cpt: Derived Object: Derivations of data from the other seven areas.

### 8.3. Three-Plus-One Level Organization Model

ID: EA-ORGANISM-CH8-3PLUS1-01
Purp: To summarize the three-plus-one structural model.

- Fnd: All organizations share a similar structure of three horizontal tiers plus one orthogonal vertical business management tier.
- Cpt: Complex organizations are multiples of this basic structure.

### 8.4. Dealing with Change

ID: EA-ORGANISM-CH8-CHANGE-01
Purp: To summarize how the new EA deals with change.

- Mech: Use links between internal and external entities to rapidly determine the impacts of environmental changes.
- Cpt: Two Forms of Links.
  - Cpt: Overt relationships: Direct relationships using foreign keys (e.g., "Event triggers Activity").
  - Cpt: Common value relationships: Links expressed through sharing common values for attributes (e.g., customer address changing relative to store address).
  - Ref: EA-ORGANISM-CH4-PARTY-01
  - Ref: EA-ORGANISM-CH4-PRODUCTS-01
- Res: With this EA, we can be reasonably confident of dealing with the impacts of changes in the organization's environment.

### 8.5. Final Conclusion

ID: EA-ORGANISM-CH8-CONCLUSION-01
Purp: To state the final intention of the book.

- Cpt: This book is not about *how* to do EA, as that is well-covered by other methodologies.
- Cpt: This book is not intended to replace the detailed work required by those methodologies.
- Obj: To add a new perspective (the outside-in view) and, through that, add value to the Enterprise Architecture that is delivered to organizations.