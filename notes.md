# Unit 1
Structured vs unstructured data
    - structured data: numbers, characters, dates, addresses, telephone numbers
    - unstructured data: multimedia, GPS coordinates, documents, social media post text, maps
    
#### Def: data
    stored representations of objects and events that have meaning and importance in the user's environment

#### Def: information 
    data that have been processed in such a way as to increase the knowledge of the person who uses the data
    e.g. a list of tuples of names and numbers is useless unless you know the numbers are of a particular type, e.g. social security numbers or student IDs -- this is information

#### Def: Metadata
    data about data.
    e.g. names, definitions, size of data, last-modified timestamp, allowable values/types

### Def: Database application
    application program used to perform CRUD on behalf of users
    
## File Processing Approach
- store data in file systems only
- typical to have duplication as separate applications maintain their own data, but may actually need the same or very similar data
- no clever pointer/reference usage to achieve single source of truth
- e.g. tab separated values in a customer file for an accounting system might be formatted differently to tab separated values in the payroll department, but both may require similar employee data
- new applications requiring new tsv-shape require re-processing all files and keeping them sycnhronized. just logistically difficult to do

### Disadvantages
- program-data dependence
- - file descriptions are stored within each database application -- change to file structure requires changes to the file descriptions for all programs tht acess that file
- Duplication
- - unplanned ducpliation often the rule rather than exception because applications are often developed independently in file processing systems
- - e.g. order filling system maintains an inventory file while the invoicing system might contain an inventory pricing file. Two files about inventory might have overlapping and mutually inconsistent data, as well as fields present in one not present in the other. Same data fields will be duplicated or worse, inconsistent
- Limited Data Sharing
- - e.g. accoutning has access to inventory system and its files but probably not order filling system and its files. 
- - managers often find that a requested report requires a major programming effort becasue dat must be drawn from several incompatible files in separate systems 
- Lengthy Development times
- - developers must start from scratch defining file formats each time a new application is requested, also must write data access layer for a scalable application, for each new application. In DBMs this is abstracted with ORM/ODMs
- Excessive Program Maintenance
- - The preceeding factors all combined to create eavy program maintenance load, maybe up to 80%

    These disadvantages also apply to excel spreadsheets unless they are used cleverely
    However advanced features like Queries are less performant than purpose-built DBMS

    These disadvanages can also manifest when DBMS are used if they are used sub-optimally, e.g. by creating a new separate database for every new application with no coordination of the meta data

## The Database Approach
#### DEF: Relational Database
    DB that represents data as acollection of tables in which all data relationships are represented by common values in related ables

#### DEF: Database Management System (DBMS)
    Software used to create maintain and provide controlled access to user databases and establish relations between entities represented
    Also provides facilities for controlling data access, enforcing data integrity, managing concurrency and restoring a databse

### Advantages of the Database Approach
- Program-data indepdenence
- - separation of data descriptions (meta data) from application programs that use the data
- - Data Descriptions are stored in the _repository_
- Planned Data Redundancy
- - single source of truth for every independent fact
- - e.g. user Anthony De Vellis should have only one record in the user's table and his address should only be stored there
- Improved Data Consistency
- Improved Data Sharing
- - enables different views to display only certain parts and combinations of parts of the database
- - designed as a single corporate resource for different databse users, including application programmes and operational staff for generating reports
- Improved Productivity of Application Development
- - app devs concentrate only on specific functions required for new app without worrying about data access layer details
- - DBMS provides high level tools such as forms and report generators and high level languages that automate data access and data definition
- - 60% improvement in developer productivity according to academic empirical analysis
- Enforcement of Standards
- - database administration granted single point authority for establishing data standards as an organizational matter
- - naming conventions, data quality, access, update, protection procedures
- Improved Data Quality
- - Poor data quality is estimated to cost $3 T as of 2011
- - designers can specifiy integrity constraints to be enforced by DBMS also called "business rules"
- - e.g. an order may not be placed without specifying a customer -- can be enforced at DBMS level so that query throws application exception
- Improved Data Accesibility and Responsiveness
- - SQL
- Reduced Program Maintenance 
- - data independence , all of the above tbh. e.g. Y2K
- Improved Decision Support

### Disadvantages
- New, specialized personnel
- Infrastructure (installation and management) complexity
- Conversion/migration cost
- Explicit backup and recovey
- Organizational deficit

## Integrated Data Management Framework
- Big Data "Scheme-on-Read" - structure will be determined when data are used
- - 3V`s: Volume, Variety, Velocity
- Warehousing/transaction-focused/operational "Schema-on-Write" - schema must be determined before database is used

# Unit 2.2
Seven Deadly Sins of Databases

1. Poor or missing documentation for database(s) in production (this will be addressed in Chapters 2 and 3 via the topics of business rules and data modeling with entity relationship diagramming)
2. Little or no normalization (this will be a central topic of Chapter 4 on the relational data model)
3. Not treating the data model like a living, breathing organism (we encourage you through exercises and projects to develop database designs in phases and to realize that requirements evolve and emerge over time; in other words, design for change)
4. Improper storage of reference data (we will address this briefly in subsequent chapters in Parts II and III of this text)
5. Not using foreign keys or check constraints (this will be a significant topic in Chapters 4 and 8)
6. Not using domains and naming standards (we emphasize naming standards in Chapter 2 and provide guidelines on good standards to adopt in your practice)
7. Not choosing primary keys (we emphasize entity identifiers in Chapter 2 and address considerations in choosing primary keys in Chapters 4 and 8)

#### Def: The Entity Relation Mode
    A logical representation of the data for an organization or for a business area using entities for categories of data and relationships for associations between entities
#### Def: The Entity-Relation Diagram
    A graphical representation of an ERM

#### Def: Business Rule - _integrity constraint_
    A statement that defines or constrains some aspect of thebusiness. It is intended to assert business structure or to contorl or influence the beahviour of the business. Also called an _integrity constraint_

#### Def: Term
    A word or phrase that has a specific meaning for the business.

#### Def: Fact
    An association between two or more terms.

Salin (1990) suggests that you develop data names by:

1.    Preparing a definition of the data. (We talk about definitions next.)

2.    Removing insignificant or illegal words (words not on the approved list for names); note that the presence of AND and OR in the definition may imply that two or more data objects are combined, and you may want to separate the objects and assign different names.

3.    Arranging the words in a meaningful, repeatable way.

4.    Assigning a standard abbreviation for each word.

5.    Determining whether the name already exists and, if so, adding other qualifiers that make the name unique.

    “The person who controls the meaning of data controls the data.”
    
#### DEF: Entity

    A person, a place, an object, an event, or a concept in the user environment about which the organization wishes to maintain data.

#### Def: Strong entity type

    An entity that exists independently of other entity types.

#### Def: Weak entity type

    An entity type whose existence depends on some other entity type.

#### Def: Identifying owner

    The entity type on which the weak entity type depends.

#### Def: Identifying relationship

    The relationship between a weak entity type and its owner.

#### Def: Identifier

    An attribute (or combination of attributes) whose value distinguishes instances of an entity type.
    
#### Def: Composite identifier

    An identifier that consists of a composite attribute.

### Attribute naming convention
 [Entity type name { [ Qualifier ] } ] Class
Qualifier or class may denote _domains_ e.g. city name
ApprenticeResidenceCityName
FacultyResidenceCityName
- this allows users to search all people who have the same residence city names
- ResidenceCity would be a domain
### Attribute definitions
- what and why
- what is included and what is not included e.g. salry does not include benefits
- aliases if any
- source of values e.g. "Standard Industrial Codes provided by FTC annually"
- required or optional
- the maximum and minimum number of occurrences of an attribute value for an entity instance. For example, “Employee Skill Name is the name of a skill an employee possesses. Each employee must possess at least one skill, and an employee can choose to list at most 10 skills.”
- relations to other attributes

### Relationships
Verb names
Type example: Student Completes Course
Instance of type: StudentID 20533272 completed ECE250, ECE222

#### Def: Relationship type

    A meaningful association between (or among) entity types.

#### Def: Relationship instance

    An association between (or among) entity instances where each relationship instance associates exactly one entity instance from each participating entity type.

Relations may also have attributes. e.g. course completion date

The presence of one or more attributes on a relationship suggests to the designer that the relationship should perhaps instead be represented as an entity type.

#### Def: Associative entity

    An entity type that associates the instances of one or more entity types and contains attributes that are peculiar to the relationship between those entity instances.

1. All the relationships for the participating entity types are “many” relationships.

2. The resulting associative entity type has independent meaning to end users and, preferably, can be identified with a single-attribute identifier.

3. The associative entity has one or more attributes in addition to the identifier.

4. The associative entity participates in one or more relationships independent of the entities related in the associated relationship.

### Cardinality Constraint

    A >| ------------ o< B
        B must have between 1 and many of A
        A must have between 0 and many of B
    C || ------------ o| D
        D must have exactly one of C
        C may have zero or one of D

# Unit 2.3 - Enhanced Entity-Relationship Model

Supertype defines attributes and relations shared by subtypes inculding Primary Key/Identifier
Subtype defines attributes and relations unique to subtype

#### Def: Attribute inheritance

    A property by which subtype entities inherit values of all attributes and instances of all relationships of their supertype.

#### Def: Generalization

    The process of defining a more general entity type from a set of more specialized entity types.

#### Def: Specialization

    The process of defining one or more subtypes of the supertype and forming supertype/subtype relationships.

#### Def: Completeness constraint

    A type of constraint that addresses whether an instance of a supertype must also be a member of at least one subtype.

#### Def: Total specialization rule

    A rule that specifies that each entity instance of a supertype must be a member of some subtype in the relationship.
    Double line from parent to circle

#### Def: Partial specialization rule

    A rule that specifies that an entity instance of a supertype is allowed not to belong to any subtype.
    Single line from parent to circle

#### Def: Disjointness constraint

    A constraint that addresses whether an instance of a supertype may simultaneously be a member of two (or more) subtypes.

#### Def:  Disjoint rule

    A rule that specifies that an instance of a supertype may not simultaneously be a member of two (or more) subtypes.
    Bold circle with a 'd' in the middle

#### Def: Overlap rule

    A rule that specifies that an instance of a supertype may simultaneously be a member of two (or more) subtypes.
    Bold circle with an 'O'

#### Def: Subtype discriminator

    An attribute of a supertype whose values determine the target subtype or subtypes.
    For overlapping subtypes a composite attribute of the subtype attributes to which the entity instance belongs is used

#### Def: Supertype/subtype hierarchy

    A hierarchical arrangement of supertypes and subtypes in which each subtype has only one supertype.

### Entity Clustering

#### Def: Entity cluster

    A set of one or more entity types and associated relationships grouped into a single abstract entity type.

### Packaged data models

#### Def: Universal data model

    A generic or template data model that can be reused as a starting point for a data modeling project.

Why used a pacaged/universal data model?
- evolutionary (some problems have already been solved) same as design patterns in software engineering
    - why reinvent the wheel?
- projects take less time because solved problems don't need to be solved again
- embedded wisdom -- much business territory has already been charted before
- less likely to omit needed features
- consistent naming conventions
- provides a starting point for asking requirements questions so that most likely all areas oft he model are addresed during the planning phase
- data models easier to read and easier to onboard people on
- extensive use of type hierarchies and other structures promotes data reuse and holistic view of data
- extensive use of many:many relations and associative entities even where a data modeler might place a one-to-many gives the data modeler greater flexibility to fit any situation and naturally handles time stamping and retention of important history
- adaptation of data model from DBMS vendor usually means data model will easily work with other applications from this same vendor and their partners
- if multiple companies in the same industry use the same universal data model as the basis it may be easier to share information to inter-organizational instutitutions 
(e.g. reservation systems between rental car firms and airline firms -- API design will be easier)

Purchasing a data model concretely means buying metadata
- often includes the ability to generate SQL commands for various SQL engines to generate the data model in the database

### To use a Prepackage data model
- identify parts that apply to your business
- add/delete attributes
- add/delete entities
- add/delete relations/associative entities
- change names to reflect orgnization's context
- map data from old DB to new DB if migrating old data to new model/DBMS
    - there will be data from legacy not in pcakage and data in package not in legacy
        - there are things you want to do that legacy does not currently do, which is the point of migration
        - there are things your organization does that none others do, which is the point of customizing the universal data model
- will likely not figure out all customizations in one sprint, however you don't want to cut anything out the might inhibit you from visualizing future requirements
    - One approach to explaining the build-out schedule is to use entity clustering to show segments of the full data model that will be built in diferent phases

### Challenges
- the same attribute may have been used for different purposes "overloaded columns"
    - there may not be an obvious way to migrate legacy
    - sometimes not documented or known about until migration begins
    - some data may not be needed
- empty attributes .eg. employee addresses missing
    - could be caused by application errors
    - could be caused by a data model that was changed after initial implementation
- Profiling may help reveal hidden meaning and identifying inconsiostencies in existing data models
    - statistical analysis of data to uncover patterns and flaws
    - find outliers, identify shifts in data over time
    - each perturbation of the distribution of data may tell a story, such as when a major application update ocurred or when business rules changed
        - usually suggest poorly deisnged databases.
    - can also be used to assess acuracy

# Unit 3.4 Relational Database Model
1. Data Structure - Data are organized into tables with rows and columns defined by DDL
2. Data manipulation - Powerful operations defined by DML are used to manipulate data stored in the relations
3. Data integrity - the model includes mechanisms to specify business rules that maintain the integrity of data when they are manipulated

#### Def: Relation

    A named, two-dimensional table of data.
    EMPLOYEE1(_EmpID_, Name, DeptName, Salary) defines a relation named EMPLOYEE1 with those column/attribute names

Every relation must have a primary key

#### Def: Primary key

    An attribute or a combination of attributes that uniquely identifies each row in a relation.
    Identified by an underline

Identifiers in ER models are usually Primary keys in Relational Models
    - exceptions: associative entities do not have identifiers, (identities of associated entities may form primary and secondary keys), several attributes may serve as identifiers, and weak entity identifier forms only part of a corresponding reation's primary key

#### Def: Composite key

    A primary key that consists of more than one attribute.

#### Def: Foreign key

    An attribute in a relation that serves as the primary key of another relation in the same database.

Not all tables are relations

### Properties of Relations
1. Each relation has a unique name
2. An entry at the intersection of each row and column is atomic or single-valued
    There can be only one value associated with each attribute on a specific row of a table, multivalued attributes are not allowed
3. Each row is unique, no two rows in a relation can be identical
4. Each attribute or column within a table has a unique name
5. The order of columns is irrelevant
6. The order of rows is irrelevant

Note: In cases when a foreign key is also part of a composite key (such as this), frequently only the primary key role of the

## Integrity Constraints
Rules limiting acceptable  values and actions
- facilitate accuracy and integrity of data
- types: domain constraints, entity integrity, referential integrity

All values in a column must be from the same domain
- domain defined by name, meaning, data type, size, allowable values
    - e.g. integers between 69 and 420
    - e.g. character strings of size 5

### Entity Integrity
- ensure every relation has a primary key
- data values for that key are valid

#### Def - Entity integrity rule

    A rule that states that no primary key attribute (or component of a primary key attribute) may be null.

### Referential Integrity

#### Def - Referential integrity constraint

    A rule that states that either each foreign key value must match a primary key value in another relation or the foreign key value must be null.
    Can only be null if the association is optional

Three options if mandatory (foreign key not null):
1. Cascade delete -- when an entity instance is deleted, also delete all entities which have a foreign reference to that entity
2. Prohibit deletion of an entity of there are dependent entities with foreign reference to that entity
3. Enforce that foreign key not null when entity is created but allow non cascading deletion of entity at the foreign reference

#### Def - Well-structured relation

    A relation that contains minimal redundancy and allows users to insert, modify, and delete the rows in a table without errors or inconsistencies.

#### Def - Anomaly

    An error or inconsistency that may result when a user attempts to update a table that contains redundant data. The three types of anomalies are insertion, deletion, and modification anomalies.



    1. Insertion anomaly Suppose that we need to add a new employee to EMPLOYEE2. The primary key for this relation is the combination of EmpID and CourseTitle (as noted earlier). Therefore, to insert a new row, the user must supply values for both EmpID and CourseTitle (because primary key values cannot be null or nonexistent). This is an anomaly because the user should be able to enter employee data without supplying course data.

    2. Deletion anomaly Suppose that the data for employee number 140 are deleted from the table. This will result in losing the information that this employee completed a course (Tax Acc) on 12/8/2018. In fact, it results in losing the information that this course had an offering that completed on that date.

    3. Modification anomaly Suppose that employee number 100 gets a salary increase. We must record the increase in each of the rows for that employee (two occurrences in Figure 4-2); otherwise, the data will be inconsistent.

## Transforming E/ER Diagrams into Relations
CASE tools can automatically perform conversion from EER to Logical Model
4 reasons to understand how to do it manually
1. CASE tools often cannot model more complex data relationships, such as ternary relationships and supertype/subtype relationships. In these situations, you may have to perform the steps manually.
2. There are sometimes legitimate alternatives for which you will need to choose a particular solution.
3. You must be prepared to perform a quality check on the results obtained with a CASE tool.
4. Understanding the transformation process helps you understand why conceptual data modeling (modeling the real-world domain) is different from logical data modeling (i.e., representing the data items within the domain in a way that can be implemented with a DBMS).

#### Def - Regular entities
    
    Regular entities are entities that have an independent existence and generally represent real world objects such as persons and products
    Regular entities are represented by rectangles with a single line

#### Def - Weak entities

    entities that cannot exist except with an identifying relationship with an owner (regular) entity type. Weak entities are identified by a rectangle with a double line. 

#### Def - Associative entities (also called gerunds) 

    formed from many-to-many relationships between other entity types. Associative entities are represented by a rectangle with rounded corners.

### Step 1: Map Regular Entities
- Regular entities become relations of the same name
    - each simple attribute becomes a column
    - identifier becomes primary key
        - check properties of identifiers
    - composite attributes' simple components become columns
        - e.g. Customer Address (Street, City, State) becomes Customer StreetAddress, CustomerCity, CustomerState
            - or simply Customer.StreetAddress, Customer.City, Customer.State
    - Multivalued Attributes
        - two new relations are created
        - multivalued attributes become separate table with EER attribute identifier as foreign key, and the primary key a composite of the value and the foreign key (to make two way indexing fast I assume?)
            - if the elements of the multivalued EER attributes are composites, then this second relation becomes an M:M associative entity and a third table will be represented, with the skill component of the primary key of the association being the primary key of the third table
        
- Weak entities have the primary key of the Regular entity they depend on as a foreign key attribute
    - called a partial identifier which permits distinguishing each instance of weak entity for each owner entity instance
        - foreign key of owner entity should be an index
            - alternatively make the primary key of the weak entity a composite of the primary key of the owner and the partial identifier
    - the rest of the columns are the simple attributes of the EER entity

#### Def: Surrogate primary key

    A serial number or other system-assigned primary key for a relation.

When to use a surrogate key
- There is a composite primary key, as in the case of the DEPENDENT relation shown previously with the four-component primary key.
- The natural primary key (i.e., the key used in the organization and recognized in conceptual data modeling as the identifier) is inefficient. For example, it may be very long and hence costly for database software to handle if it is used as a foreign key that references other tables.
- The natural primary key is recycled (i.e., the key is reused or repeated periodically, so it may not actually be unique over time); a more general statement of this condition is when the natural primary key cannot, in fact, be guaranteed to be unique over time (e.g., there could be duplicates, such as with names or titles).
_Note: keep the 'natural' primary key as nonkey attributes when using a surrogate key_

### Step 3: Map Binary Relationships

Mapping relationship sdepends on degree of relationships (unary, binary, ternary, k-ary) and the cardinalities of the relationships

- Binary 1:M
    - create a relation for each of the two entity types
    - include the primary key of the entity on the one side of the relationship as a foreign key in the entity on the many side of the relationship
        - the primary key migrates to the many
            "migrate to the many"
        - may wish to create an index on this foreign key for the entity on the many side
        - must be same domain/type
- Binary N:M
    - create a new relation, include two foreign key attributes referencing the primary keys of the binary-related entities
    - primary key is the composite of the two foreign keys
        - often the primary key is not needed -- simply use one of the foreign keys as a primary key and create an index on the other

- Binary 1:1
    - special case of 1:M
    - primary key of one relation is included as a foreign key in the other relation
        - if cardinality is mandatory in both direction, include primary keys as foreign key in the others
    - in the optional side, include a foreign key referencing the primary key that has the mandatory participation
        - prevents having to store null as foreign keys
    - any attributes associated with the relationship itself are also included in the same relation that has the foreign key
        - if participation is optional, maybe create an index to speed up accesses
    
### Step 4: Associative Entities
- basically the same as the N:M binary case
    - Identifier not assigned: primary key is composite of the primary keys of the participant entities (a foreign key in the associative entity)
    - Identifer assigned: 
        - perhaps associative entity type has a natural single attribute identifier that is familiar to end users
        - default identifier consisting of identifiers for each of the participating entity types may not uniquely identify instances of the associative entity
            - in addition to reasons for creating a surrogate primary key
        - if this is the case use the identifier assigned to the associative entity on the EER diagram
            - still include primary keys of participants as foreign key attributes

### Step 5: Unary Relationships
- also called recursive relationships

#### Def: Recursive foreign key

    A foreign key in a relation that references the primary key values of the same relation.

- Unary N:M
    - a relation is created to track mappings of instances of another relation to themselves
        - e.g. item and component -- items composed of multiple components -- component is an associative relation between items
        - primary key would be the item the component is involved in and the foreign key would be the primary key of a constituent item
    - again, maybe use a surrogate key and an index on the recursive foreign key

### Step 6: N-ary relationships
- primary key is composite of primary keys of n participant relations (sometimes additional attributes are needed to make associative relation instance PK unique)
- constituent primary key components act as foreign keys that reference primary keys of participant entities
- attributes of the associative entity become attributes of the new, n+1-th relation
- usually will use a surrogate key in n-ary relations because unique composite keys usually have more than n components

### Step 7: Supertype/Subtype Relationships
- not officially supported
- design patterns:
    1. Create a separate relation for the supertype and each of its subtypes
    2. Assign the relation created for the supertype the attributes that are common to all members, including primary key
    3. assign to the relation for each subtype the primary key of the supertype and only their unique attributes
    4. assign one (or more) attributes of the supertype to function as the subtype discriminator
- basically a 1:M relationship + a discriminator attribute
- each subtype primary key is a foreign key reference to the supertype primary key


## Normalization Intro

When to use normalization
1. During logical database design (described in this chapter) You should use normalization concepts to verify the quality of the relations that are obtained from mapping E-R diagrams.
2. When reverse-engineering older systems Many of the tables and user views for older systems are redundant and subject to the anomalies we describe in this chapter.

#### Def: Normalization

    The process of decomposing relations with anomalies to produce smaller, well-structured relations.
    Goals:
    1. Minimize data redundancy, thereby avoiding anomalies and conserving storage space.
    2. Simplify the enforcement of referential integrity constraints.
    3. Make it easier to maintain data (insert, update, and delete).
    4. Provide a better design that is an improved representation of the real world and a stronger basis for future growth.

Normalization does not make any assumptions about how data will be used in displas, queries or reports
Normalization is part of logical database design, and therefore places no constraints on how data will be pjhysically stored or on processing performance

Normalization can be understood in stages, each of which corresponds to a normal form
A normal form is a state of a relation that requires certain rules regarding relationships between attributes or _functional dependencies_ are satisfied

1. _First Normal Form_ any multivalued attributes (also called repeating groups) have been removed so there is a single value, possibly null, at the intersection of each row and column of the table
2. _Second Normal Form_ any partial functional dependencies have been removed (i.e. nonkey attributes are identified by the whole primary key)
3. _Third Normal Form_ Any transitive dependencies have been removed (i.e. nonkey attributes are identified by only the primary key)
4. _Boyce-Codd Normal Form_ Any remaining anomalies that result from functional dependencies have been removed (because there was more than one possible primary key for the same nonkeys)
5. _Fourth Normal Form_ Any multivalued dependencies have been removed
6. _Fifth Normal Form_ Any remaining anomalies have been removed

#### Def - Normal form

    A state of a relation that requires that certain rules regarding relationships between attributes (or functional dependencies) are satisfied.

#### Def - Functional Dependency

    A constraint between two attributes in which the value of one attribute is determined by the value of another attribute.
    Formally,
        For any relation R, attribute B is functionally dependent on attribute A, if for every valid instance of A, that value of A uniquely determines the value of B

An attribute may be functionally dependent on a cmbination of two or more other attributes
For example, an ISBN tells you what the title, authr name and publisher of a book are
A VIN tells you the make and model of a car

### Determinants
The left side of a functional dependency statement is called a determinant. VIN and ISBN are determinants
VIN --> make, model
ISBN --> author, publisher, title

#### Def - Candidate key

    An attribute, or combination of attributes, that uniquely identifies a row in a relation.
    Must satisfy:
    1. Unique identification For every row, the value of the key must uniquely identify that row. This property implies that each nonkey attribute is functionally dependent on that key.
    2. Nonredundancy No attribute in the key can be deleted without destroying the property of unique identification.

Generally accepted that candidate keys cannot be null and should not change value over time.
A determinant must be a candidate key.

A candidate key is a determinant that uniquely identifies all attributes in a relation

Conversion to Normal Form

A relation is in first normal form (1NF) if the following two constraints both apply:
1. There are no repeating groups in the relation (thus, there is a single fact at the intersection of each row and column of the table).
2. A primary key has been defined, which uniquely identifies each row in the relation.

#### Def - First normal form (1NF)

    A relation that has a primary key and in which there are no repeating groups.

#### Def - Second normal form (2NF)

    A relation in first normal form in which every nonkey attribute is fully functionally dependent on the primary key.

#### Def - Partial functional dependency

    A partial functional dependency in which one or more nonkey attributes are functionally dependent on part (but not all) of the primary key.

To convert a relation to 2NF,
1. Create a new relation for each primary key attribute (or combination of attributes) that is a determinant of a partial dependency. That attribute is the primary key in the new relation
2. Move the nonkey attributes that are only dependent on this primary key attribute from the old relation to the new relation

If a 1NF relation is also 2NF if any of the following are true (TFAE)
1. The primary key consists of only one attribute (therefore there cannot be a partial dependency)
2. No nonkey attributes exist in the relation
3. Every non key attribute is functionally dependent on the full set of primary key attributes

Convert to 3NF

#### Def - Third normal form (3NF)

    A relation that is in second normal form and has no transitive dependencies.

#### Def - Transitive dependency

    A functional dependency between the primary key and one or more nonkey attributes that are dependent on the primary key via another nonkey attribute.

Remove transitive dependencies
1. For each nonkey ttribute that is a determinant in a relation, create a new relation. That attribute becomes the primary key of the new relation
2. Move all of the attributes that are functionally dependent only on the primary key of the new relation from the old to the new relation
3. Leave the attribute that serves as a primary key in the new relation in the old relation to serve as a foreign key facilitating association betweein the two relations

## Merging Relations
AKA View Integration
Data from an order form may go into many tables related to orders
Why merge relations?
1. On large projects, the work of several subteams comes together during logical design, so there is often a need to merge relations.
2. Integrating existing databases with new information requirements often leads to the need to integrate different views.
3. New data requirements may arise during the life cycle, so there is a need to merge any new relations with what has already been developed.

### Attribute Name Conflicts
#### Def - Synonyms

    Two (or more) attributes that have different names but the same meaning.

Solution: use an alias

#### Def - Alias

    An alternative name used for an attribute.
    Supported by many DBMS systems
    May be used interchangeably to satisfy multiple teams' jargon

#### Def - Homonym

    An attribute that may have more than one meaning.

Solution: create new attribute names

### Transitive Dependencies

Merge relations and then normalize into 3NF

### Subtype/Supertype relations

Follow the rules of convering subtype/supertype into relational model
Create a supertype relation, with an optional discriminating attribute
Then create the subtype relations
i.e. do not merge

## Final Steps for Defining Relational Keys

#### Def - Enterprise key

    A primary key whose value is unique across all relations.
    This would have no business meaning. E.g. a UUID

Could also include the _business key_ or _natural key_ as nonkey attributes in the relation

# Unit 4.5 Intro to SQL

#### Def - Relational DBMS (RDBMS)

    A database management system that manages data as a collection of tables in which all data relationships are represented by common values in related tables.

#### Def - Catalog

    A set of schemas that, when put together, constitute a description of a database.

Each catalog must also contain an information schema, which contains descriptions of all schemas in the catalog, tables, views, attributes, privileges, constraints, and domains, along with other information relevant to the database.

#### Def - Schema

    A structure that contains descriptions of objects created by a user, such as base tables, views, and constraints, as part of a database.

#### Def - Data definition language (DDL)

    Commands used to define a database, including those for creating, altering, and dropping tables, views, indexes and establishing constraints.

#### Def - Data manipulation language (DML)

    Commands used to maintain and query a database, including those for updating, inserting, modifying, and querying data.

#### Def - Data control language (DCL)

    Commands used to control a database, including those for administering privileges and committing (saving) data.

CREATE SCHEMA 	Used to define the portion of a database that a particular user owns. Schemas are dependent on a catalog and contain schema objects, including base tables and views, domains, constraints, assertions, character sets, collations, and so forth.

CREATE TABLE 	Defines a new table and its columns. The table may be a base table or a derived table. Tables are dependent on a schema. Derived tables are created by executing a query that uses one or more tables or views.

CREATE VIEW 	Defines a logical table from one or more tables or views. Views may not be indexed. There are limitations on updating data through a view. Where views can be updated, those changes can be transferred to the underlying base tables originally referenced to create the view.

CREATE VIEW 	Defines a logical table from one or more tables or views. Views may not be indexed. There are limitations on updating data through a view. Where views can be updated, those changes can be transferred to the underlying base tables originally referenced to create the view.

CREATE INDEX 	Creates a separate data structure that the database management system can use to identify the location of rows that satisfy a specific condition.

Above can be reversed by substituting "DROP" for "CREATE"

CREATE CHARACTER SET 	Allows the user to define a character set for text strings and aids in the globalization of SQL by enabling the use of languages other than English. Each character set contains a set of characters, a way to represent each character internally, a data format used for this representation, and a collation, or way of sorting the character set.

CREATE COLLATION 	A named schema object that specifies the order that a character set will assume. Existing collations may be manipulated to create a new collation.

CREATE TRANSLATION 	A named set of rules that maps characters from a source character set to a destination character set for translation or conversion purposes.

CREATE ASSERTION 	A schema object that establishes a CHECK constraint that is violated if the constraint is false.

CREATE DOMAIN 	A schema object that establishes a domain, or set of valid values, for an attribute. Data type will be specified, and a default value, collation, or other constraint may also be specified, if desired.

Syntax for Create table:

CREATE TABLE _tablename_
({ column definition [_table constraint_]} ... 
[ON COMMIT { DELETE|PRESERVE} ROWS ]);
where
_column definition_ ::=
_columnname_ {_domain name|datatype[(size)]}
            [_column constraint clause_...]
            [_default value_]
            [_collate clause_]
and _table constraint_ ::=
[CONSTRAINT _constraintname_]
Constraint_type [_constraint attributes_]

ON UPDATE RESTRICT -- prevent changes to a primary key unless no foreign key references that value in any child table
ON UPDATE CASCADE -- changes to primary key update foreign keys
ON UPDATE SET NULL -- changes to primary key nulls foreign references
ON UPDATE SET DEFAULT

ON DELETE [RESTRICT|CASCADE|SET NULL/DEFAULT]

